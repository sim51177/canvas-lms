#
# Copyright (C) 2011 Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.
#

module GradebooksHelper
  def should_be_published?(students, assignment, submissions)
    return false if assignment.published?
    return true if assignment.needs_publishing?
    submissions = submissions.select{|s| s.assignment_id == assignment.id && s.score}
    result = (submissions.length.to_f / students.length.to_f) > 0.5 &&
      !assignment.available?
    result
  end
  
  def display_grade(grade)
    grade.blank? ? "--" : grade
  end
end
