package("embedded-xoodyak")
    set_homepage("https://github.com/midnight-wonderer/embedded-xoodyak")
    set_description("A portable, lightweight, and zero-allocation C library implementing the Xoodyak cryptographic scheme")
    set_license("CC0-1.0")

    add_urls("https://github.com/midnight-wonderer/embedded-xoodyak/archive/refs/tags/$(version).tar.gz",
             "https://github.com/midnight-wonderer/embedded-xoodyak.git")

    add_versions("v0.1.0", "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)

    on_test(function (package)
        assert(package:has_cfuncs("Xoodyak_Initialize", {includes = "Xoodyak.h"}))
    end)
