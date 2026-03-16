using { ust.buysell.masterdata.projectsys as projectsysdb } from '../db/projectsys';

service ProjectsysService {
    entity projects as projection on projectsysdb.PROJ {
        *
    };
    entity WBSElements as projection on projectsysdb.WBSElements;
}