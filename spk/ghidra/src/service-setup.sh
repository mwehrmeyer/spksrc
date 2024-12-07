CFG_FILE="${SYNOPKG_PKGDEST}"/server/server.conf
JNA_TMPDIR="${SYNOPKG_PKGDEST}"/jna_tmpdir

SERVICE_COMMAND="env TMPDIR=${JNA_TMPDIR} ${SYNOPKG_PKGDEST}/server/ghidraSvr console"
SVC_BACKGROUND=y
SVC_WRITE_PID=y

service_postinst ()
{
    if [ "${SYNOPKG_PKG_STATUS}" == "INSTALL" ]; then
        sed -i -e "s|@repositories_folder@|${ghidra_volume}/${ghidra_repositories_share}|g" ${CFG_FILE}
    fi
}
