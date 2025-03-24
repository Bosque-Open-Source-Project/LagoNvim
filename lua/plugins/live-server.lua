-- to run live-server, make sure you have live-server installed globally
-- to download liveserver, run "npm install -g live-server"

return {
  {
    "barrett-ruth/live-server.nvim",
    build = "pnpm add -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    config = true,
  },
}
