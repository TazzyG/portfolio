module ProjectsHelper

	include ActsAsTaggableOn::TagsHelper
  ActsAsTaggableOn.remove_unused_tags = true
  ActsAsTaggableOn.force_lowercase = true


end
