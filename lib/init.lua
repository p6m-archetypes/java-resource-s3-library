-- java-resource-s3-library main module.
-- Renders AWS S3 Spring configuration into the server module.
--
-- The calling archetype adds AWS SDK BOM to root pom.xml and
-- software.amazon.awssdk:s3 dependency to server pom.xml.
--
-- API:
--   local s3 = require("java-resource-s3")
--   s3.render(context, { destination = context:get("project-name") })

local M = {}

function M.render(context, opts)
    opts = opts or {}
    local d = opts.destination
    if d and d ~= "" then
        directory.render("contents", context, { destination = d })
    else
        directory.render("contents", context)
    end
    return context
end

return M
