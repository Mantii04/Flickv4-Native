package K1;

import B1.C0026f;
import B1.C0028h;
import n1.AbstractC1367f;

/* loaded from: classes.dex */
public final class L extends AbstractC1367f {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
    }

    @Override // n1.AbstractC1367f
    public void bind(r1.p pVar, E e3) {
        String str = e3.f1594a;
        if (str == null) {
            pVar.bindNull(1);
        } else {
            pVar.bindString(1, str);
        }
        pVar.bindLong(2, c0.stateToInt(e3.f1595b));
        String str2 = e3.f1596c;
        if (str2 == null) {
            pVar.bindNull(3);
        } else {
            pVar.bindString(3, str2);
        }
        String str3 = e3.f1597d;
        if (str3 == null) {
            pVar.bindNull(4);
        } else {
            pVar.bindString(4, str3);
        }
        byte[] byteArrayInternal = C0028h.toByteArrayInternal(e3.f1598e);
        if (byteArrayInternal == null) {
            pVar.bindNull(5);
        } else {
            pVar.bindBlob(5, byteArrayInternal);
        }
        byte[] byteArrayInternal2 = C0028h.toByteArrayInternal(e3.f1599f);
        if (byteArrayInternal2 == null) {
            pVar.bindNull(6);
        } else {
            pVar.bindBlob(6, byteArrayInternal2);
        }
        pVar.bindLong(7, e3.f1600g);
        pVar.bindLong(8, e3.f1601h);
        pVar.bindLong(9, e3.f1602i);
        pVar.bindLong(10, e3.f1604k);
        pVar.bindLong(11, c0.backoffPolicyToInt(e3.f1605l));
        pVar.bindLong(12, e3.f1606m);
        pVar.bindLong(13, e3.f1607n);
        pVar.bindLong(14, e3.f1608o);
        pVar.bindLong(15, e3.f1609p);
        pVar.bindLong(16, e3.f1610q ? 1L : 0L);
        pVar.bindLong(17, c0.outOfQuotaPolicyToInt(e3.f1611r));
        pVar.bindLong(18, e3.getPeriodCount());
        pVar.bindLong(19, e3.getGeneration());
        C0026f c0026f = e3.f1603j;
        if (c0026f != null) {
            pVar.bindLong(20, c0.networkTypeToInt(c0026f.getRequiredNetworkType()));
            pVar.bindLong(21, c0026f.requiresCharging() ? 1L : 0L);
            pVar.bindLong(22, c0026f.requiresDeviceIdle() ? 1L : 0L);
            pVar.bindLong(23, c0026f.requiresBatteryNotLow() ? 1L : 0L);
            pVar.bindLong(24, c0026f.requiresStorageNotLow() ? 1L : 0L);
            pVar.bindLong(25, c0026f.getContentTriggerUpdateDelayMillis());
            pVar.bindLong(26, c0026f.getContentTriggerMaxDelayMillis());
            byte[] ofTriggersToByteArray = c0.setOfTriggersToByteArray(c0026f.getContentUriTriggers());
            if (ofTriggersToByteArray == null) {
                pVar.bindNull(27);
            } else {
                pVar.bindBlob(27, ofTriggersToByteArray);
            }
        } else {
            pVar.bindNull(20);
            pVar.bindNull(21);
            pVar.bindNull(22);
            pVar.bindNull(23);
            pVar.bindNull(24);
            pVar.bindNull(25);
            pVar.bindNull(26);
            pVar.bindNull(27);
        }
        String str4 = e3.f1594a;
        if (str4 == null) {
            pVar.bindNull(28);
        } else {
            pVar.bindString(28, str4);
        }
    }
}
