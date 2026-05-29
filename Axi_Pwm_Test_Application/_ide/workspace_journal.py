# 2026-05-29T15:25:02.028281681
import vitis

client = vitis.create_client()
client.set_workspace(path="Axi_Pwm_Test")

platform = client.create_platform_component(name = "axi_pwm_platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado/beginner_projects/Axi_Pwm_Test/axi_pwm_test_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

comp = client.create_app_component(name="axi_pwm_led_application",platform = "$COMPONENT_LOCATION/../axi_pwm_platform/export/axi_pwm_platform/axi_pwm_platform.xpfm",domain = "standalone_microblaze_0",template = "empty_application")

platform = client.get_component(name="axi_pwm_platform")
status = platform.build()

comp = client.get_component(name="axi_pwm_led_application")
comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

