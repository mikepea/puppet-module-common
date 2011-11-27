# milestone:
#  does not do anything - but can be used to ensure certain
#  operations occur before or after this milestone
#  - set the milestones of your manifest hierarchy, and
#    then require => Milestone['blah']
#
# An example milestone set could be:
#
# 10
# 20
# 30
# 40
# 50
# end
#
#
# or:
# start
# kernel_config_complete
# package_installation_complete
# application_layer_complete
# end
#
# or:
# getup
# breakfast
# lunch
# afternoontea
# dinner
# supper
# bed

# Usage:
# milestone { $title: }
#

define milestone { }

