return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      opts.settings = opts.settings or {}
      opts.settings.java = opts.settings.java or {}

      opts.settings.java.project = {
        referencedLibraries = {
          "/home/gwillyn/apache-tomcat-11.0.4/lib/*.jar",
          "src/main/webapp/WEB-INF/lib/*.jar",
        },
      }
    end,
  },
}
