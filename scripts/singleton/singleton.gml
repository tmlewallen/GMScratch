/// @desc Destroys any additional creations of the calling object

if (instance_number(object_index) > 1)
    instance_destroy();