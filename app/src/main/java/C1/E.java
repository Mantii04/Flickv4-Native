package C1;

import androidx.work.impl.WorkDatabase_Impl;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import n1.AbstractC1361E;
import p1.AbstractC1489b;

/* loaded from: classes.dex */
public final class E extends n1.K {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WorkDatabase_Impl f365b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E(WorkDatabase_Impl workDatabase_Impl) {
        super(16);
        this.f365b = workDatabase_Impl;
    }

    @Override // n1.K
    public void createAllTables(r1.f fVar) {
        fVar.execSQL("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        fVar.execSQL("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
        fVar.execSQL("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
        fVar.execSQL("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
        fVar.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
        fVar.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
        fVar.execSQL("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        fVar.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
        fVar.execSQL("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        fVar.execSQL("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        fVar.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
        fVar.execSQL("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        fVar.execSQL("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        fVar.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        fVar.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '5181942b9ebc31ce68dacb56c16fd79f')");
    }

    @Override // n1.K
    public void dropAllTables(r1.f fVar) {
        fVar.execSQL("DROP TABLE IF EXISTS `Dependency`");
        fVar.execSQL("DROP TABLE IF EXISTS `WorkSpec`");
        fVar.execSQL("DROP TABLE IF EXISTS `WorkTag`");
        fVar.execSQL("DROP TABLE IF EXISTS `SystemIdInfo`");
        fVar.execSQL("DROP TABLE IF EXISTS `WorkName`");
        fVar.execSQL("DROP TABLE IF EXISTS `WorkProgress`");
        fVar.execSQL("DROP TABLE IF EXISTS `Preference`");
        int i2 = WorkDatabase_Impl.f8283t;
        WorkDatabase_Impl workDatabase_Impl = this.f365b;
        List list = workDatabase_Impl.f8116f;
        if (list != null) {
            int size = list.size();
            for (int i7 = 0; i7 < size; i7++) {
                ((AbstractC1361E) workDatabase_Impl.f8116f.get(i7)).onDestructiveMigration(fVar);
            }
        }
    }

    @Override // n1.K
    public void onCreate(r1.f fVar) {
        int i2 = WorkDatabase_Impl.f8283t;
        WorkDatabase_Impl workDatabase_Impl = this.f365b;
        List list = workDatabase_Impl.f8116f;
        if (list != null) {
            int size = list.size();
            for (int i7 = 0; i7 < size; i7++) {
                ((AbstractC1361E) workDatabase_Impl.f8116f.get(i7)).onCreate(fVar);
            }
        }
    }

    @Override // n1.K
    public void onOpen(r1.f fVar) {
        WorkDatabase_Impl workDatabase_Impl = this.f365b;
        int i2 = WorkDatabase_Impl.f8283t;
        workDatabase_Impl.f8111a = fVar;
        fVar.execSQL("PRAGMA foreign_keys = ON");
        this.f365b.internalInitInvalidationTracker(fVar);
        List list = this.f365b.f8116f;
        if (list != null) {
            int size = list.size();
            for (int i7 = 0; i7 < size; i7++) {
                ((AbstractC1361E) this.f365b.f8116f.get(i7)).onOpen(fVar);
            }
        }
    }

    @Override // n1.K
    public void onPreMigrate(r1.f fVar) {
        AbstractC1489b.dropFtsSyncTriggers(fVar);
    }

    @Override // n1.K
    public n1.L onValidateSchema(r1.f fVar) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("work_spec_id", new p1.d("work_spec_id", "TEXT", true, 1, null, 1));
        hashMap.put("prerequisite_id", new p1.d("prerequisite_id", "TEXT", true, 2, null, 1));
        HashSet hashSet = new HashSet(2);
        hashSet.add(new p1.f("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        hashSet.add(new p1.f("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
        HashSet hashSet2 = new HashSet(2);
        hashSet2.add(new p1.i("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
        hashSet2.add(new p1.i("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id"), Arrays.asList("ASC")));
        p1.j jVar = new p1.j("Dependency", hashMap, hashSet, hashSet2);
        p1.j read = p1.j.read(fVar, "Dependency");
        if (!jVar.equals(read)) {
            return new n1.L(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + jVar + "\n Found:\n" + read);
        }
        HashMap hashMap2 = new HashMap(27);
        hashMap2.put("id", new p1.d("id", "TEXT", true, 1, null, 1));
        hashMap2.put(RemoteConfigConstants.ResponseFieldKey.STATE, new p1.d(RemoteConfigConstants.ResponseFieldKey.STATE, "INTEGER", true, 0, null, 1));
        hashMap2.put("worker_class_name", new p1.d("worker_class_name", "TEXT", true, 0, null, 1));
        hashMap2.put("input_merger_class_name", new p1.d("input_merger_class_name", "TEXT", false, 0, null, 1));
        hashMap2.put("input", new p1.d("input", "BLOB", true, 0, null, 1));
        hashMap2.put("output", new p1.d("output", "BLOB", true, 0, null, 1));
        hashMap2.put("initial_delay", new p1.d("initial_delay", "INTEGER", true, 0, null, 1));
        hashMap2.put("interval_duration", new p1.d("interval_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("flex_duration", new p1.d("flex_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("run_attempt_count", new p1.d("run_attempt_count", "INTEGER", true, 0, null, 1));
        hashMap2.put("backoff_policy", new p1.d("backoff_policy", "INTEGER", true, 0, null, 1));
        hashMap2.put("backoff_delay_duration", new p1.d("backoff_delay_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("last_enqueue_time", new p1.d("last_enqueue_time", "INTEGER", true, 0, null, 1));
        hashMap2.put("minimum_retention_duration", new p1.d("minimum_retention_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("schedule_requested_at", new p1.d("schedule_requested_at", "INTEGER", true, 0, null, 1));
        hashMap2.put("run_in_foreground", new p1.d("run_in_foreground", "INTEGER", true, 0, null, 1));
        hashMap2.put("out_of_quota_policy", new p1.d("out_of_quota_policy", "INTEGER", true, 0, null, 1));
        hashMap2.put("period_count", new p1.d("period_count", "INTEGER", true, 0, "0", 1));
        hashMap2.put("generation", new p1.d("generation", "INTEGER", true, 0, "0", 1));
        hashMap2.put("required_network_type", new p1.d("required_network_type", "INTEGER", true, 0, null, 1));
        hashMap2.put("requires_charging", new p1.d("requires_charging", "INTEGER", true, 0, null, 1));
        hashMap2.put("requires_device_idle", new p1.d("requires_device_idle", "INTEGER", true, 0, null, 1));
        hashMap2.put("requires_battery_not_low", new p1.d("requires_battery_not_low", "INTEGER", true, 0, null, 1));
        hashMap2.put("requires_storage_not_low", new p1.d("requires_storage_not_low", "INTEGER", true, 0, null, 1));
        hashMap2.put("trigger_content_update_delay", new p1.d("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
        hashMap2.put("trigger_max_content_delay", new p1.d("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
        hashMap2.put("content_uri_triggers", new p1.d("content_uri_triggers", "BLOB", true, 0, null, 1));
        HashSet hashSet3 = new HashSet(0);
        HashSet hashSet4 = new HashSet(2);
        hashSet4.add(new p1.i("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at"), Arrays.asList("ASC")));
        hashSet4.add(new p1.i("index_WorkSpec_last_enqueue_time", false, Arrays.asList("last_enqueue_time"), Arrays.asList("ASC")));
        p1.j jVar2 = new p1.j("WorkSpec", hashMap2, hashSet3, hashSet4);
        p1.j read2 = p1.j.read(fVar, "WorkSpec");
        if (!jVar2.equals(read2)) {
            return new n1.L(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + jVar2 + "\n Found:\n" + read2);
        }
        HashMap hashMap3 = new HashMap(2);
        hashMap3.put("tag", new p1.d("tag", "TEXT", true, 1, null, 1));
        hashMap3.put("work_spec_id", new p1.d("work_spec_id", "TEXT", true, 2, null, 1));
        HashSet hashSet5 = new HashSet(1);
        hashSet5.add(new p1.f("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        HashSet hashSet6 = new HashSet(1);
        hashSet6.add(new p1.i("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
        p1.j jVar3 = new p1.j("WorkTag", hashMap3, hashSet5, hashSet6);
        p1.j read3 = p1.j.read(fVar, "WorkTag");
        if (!jVar3.equals(read3)) {
            return new n1.L(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + jVar3 + "\n Found:\n" + read3);
        }
        HashMap hashMap4 = new HashMap(3);
        hashMap4.put("work_spec_id", new p1.d("work_spec_id", "TEXT", true, 1, null, 1));
        hashMap4.put("generation", new p1.d("generation", "INTEGER", true, 2, "0", 1));
        hashMap4.put("system_id", new p1.d("system_id", "INTEGER", true, 0, null, 1));
        HashSet hashSet7 = new HashSet(1);
        hashSet7.add(new p1.f("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        p1.j jVar4 = new p1.j("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
        p1.j read4 = p1.j.read(fVar, "SystemIdInfo");
        if (!jVar4.equals(read4)) {
            return new n1.L(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + jVar4 + "\n Found:\n" + read4);
        }
        HashMap hashMap5 = new HashMap(2);
        hashMap5.put("name", new p1.d("name", "TEXT", true, 1, null, 1));
        hashMap5.put("work_spec_id", new p1.d("work_spec_id", "TEXT", true, 2, null, 1));
        HashSet hashSet8 = new HashSet(1);
        hashSet8.add(new p1.f("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        HashSet hashSet9 = new HashSet(1);
        hashSet9.add(new p1.i("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
        p1.j jVar5 = new p1.j("WorkName", hashMap5, hashSet8, hashSet9);
        p1.j read5 = p1.j.read(fVar, "WorkName");
        if (!jVar5.equals(read5)) {
            return new n1.L(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + jVar5 + "\n Found:\n" + read5);
        }
        HashMap hashMap6 = new HashMap(2);
        hashMap6.put("work_spec_id", new p1.d("work_spec_id", "TEXT", true, 1, null, 1));
        hashMap6.put("progress", new p1.d("progress", "BLOB", true, 0, null, 1));
        HashSet hashSet10 = new HashSet(1);
        hashSet10.add(new p1.f("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        p1.j jVar6 = new p1.j("WorkProgress", hashMap6, hashSet10, new HashSet(0));
        p1.j read6 = p1.j.read(fVar, "WorkProgress");
        if (!jVar6.equals(read6)) {
            return new n1.L(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + jVar6 + "\n Found:\n" + read6);
        }
        HashMap hashMap7 = new HashMap(2);
        hashMap7.put("key", new p1.d("key", "TEXT", true, 1, null, 1));
        hashMap7.put("long_value", new p1.d("long_value", "INTEGER", false, 0, null, 1));
        p1.j jVar7 = new p1.j("Preference", hashMap7, new HashSet(0), new HashSet(0));
        p1.j read7 = p1.j.read(fVar, "Preference");
        if (jVar7.equals(read7)) {
            return new n1.L(true, null);
        }
        return new n1.L(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + jVar7 + "\n Found:\n" + read7);
    }

    @Override // n1.K
    public void onPostMigrate(r1.f fVar) {
    }
}
