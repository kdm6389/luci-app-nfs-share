module("luci.controller.nfs-share", package.seeall)

function index()
	if not nixio.fs.access("/etc/exports") then
		return
	end
	
	local page

	page = entry({"admin", "services", "nfs-share"}, cbi("nfs-share"), _("Network Share - NFS"))
	page.dependent = true
end
