package n1;

/* renamed from: n1.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1376o {
    public C1376o(kotlin.jvm.internal.g gVar) {
    }

    public final void beginTransactionInternal$room_runtime_release(r1.f database) {
        kotlin.jvm.internal.j.checkNotNullParameter(database, "database");
        if (database.isWriteAheadLoggingEnabled()) {
            database.beginTransactionNonExclusive();
        } else {
            database.beginTransaction();
        }
    }

    public final String getTriggerName$room_runtime_release(String tableName, String triggerType) {
        kotlin.jvm.internal.j.checkNotNullParameter(tableName, "tableName");
        kotlin.jvm.internal.j.checkNotNullParameter(triggerType, "triggerType");
        return "`room_table_modification_trigger_" + tableName + '_' + triggerType + '`';
    }
}
