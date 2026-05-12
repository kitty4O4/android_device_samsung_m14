# Samsung Galaxy M14 4G Himax Touchscreen Configuration
# Device identified as "himax-touchscreen" in /proc/bus/input/devices

# This is an internal built-in touchscreen component [citation:2]
device.internal = 1

# Explicitly define this as a touchscreen device
touch.deviceType = touchScreen

# Touchscreen should follow display orientation (auto-rotate support) [citation:7]
touch.orientationAware = 1

# Size calibration using diameter (standard for modern touchscreens)
touch.size.calibration = diameter

# Pressure calibration using amplitude (standard for capacitive touch) [citation:7]
touch.pressure.calibration = amplitude

# Scale pressure values to a reasonable range (0-1.0)
touch.pressure.scale = 0.01

# Scale touch size values appropriately
touch.size.scale = 10

# Touch viability filtering
touch.filter.level = 0

# Edge touch handling
touch.gestureMode = spots
