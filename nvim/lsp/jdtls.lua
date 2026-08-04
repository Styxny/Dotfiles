local home = os.getenv("HOME")
local workspace_dir = home .. "/.cache/jdtls-workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

return {
  cmd = {
    "jdtls",
    "-configuration", home .. "/.cache/jdtls-config",
    "-data", workspace_dir,
  },
  root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" },
  filetypes = { "java" },
}
