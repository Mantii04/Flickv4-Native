package a3;

import C4.C0082f;
import S2.E;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import b3.InterfaceC0650a;
import c3.InterfaceC0724a;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import d3.AbstractC0806a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class r implements InterfaceC0386d, b3.b, InterfaceC0385c {

    /* renamed from: n, reason: collision with root package name */
    public static final P2.b f4740n = P2.b.of("proto");

    /* renamed from: b, reason: collision with root package name */
    public final v f4741b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0724a f4742e;

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC0724a f4743f;

    /* renamed from: j, reason: collision with root package name */
    public final AbstractC0387e f4744j;

    /* renamed from: m, reason: collision with root package name */
    public final InterfaceC1657a f4745m;

    public r(InterfaceC0724a interfaceC0724a, InterfaceC0724a interfaceC0724a2, AbstractC0387e abstractC0387e, v vVar, InterfaceC1657a interfaceC1657a) {
        this.f4741b = vVar;
        this.f4742e = interfaceC0724a;
        this.f4743f = interfaceC0724a2;
        this.f4744j = abstractC0387e;
        this.f4745m = interfaceC1657a;
    }

    public static Long b(SQLiteDatabase sQLiteDatabase, E e3) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(e3.getBackendName(), String.valueOf(AbstractC0806a.toInt(e3.getPriority()))));
        if (e3.getExtras() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(e3.getExtras(), 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor query = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !query.moveToNext() ? null : Long.valueOf(query.getLong(0));
        } finally {
            query.close();
        }
    }

    public static String e(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((m) it.next()).getId());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object f(Cursor cursor, p pVar) {
        try {
            return pVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public final SQLiteDatabase a() {
        v vVar = this.f4741b;
        Objects.requireNonNull(vVar);
        InterfaceC0724a interfaceC0724a = this.f4743f;
        long time = interfaceC0724a.getTime();
        while (true) {
            try {
                return vVar.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e3) {
                if (interfaceC0724a.getTime() >= ((C0383a) this.f4744j).f4722d + time) {
                    throw new SynchronizationException("Timed out while trying to open db.", e3);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    public final Object c(p pVar) {
        SQLiteDatabase a7 = a();
        a7.beginTransaction();
        try {
            Object apply = pVar.apply(a7);
            a7.setTransactionSuccessful();
            return apply;
        } finally {
            a7.endTransaction();
        }
    }

    public int cleanUp() {
        long time = this.f4742e.getTime() - ((C0383a) this.f4744j).f4723e;
        SQLiteDatabase a7 = a();
        a7.beginTransaction();
        try {
            String[] strArr = {String.valueOf(time)};
            Cursor rawQuery = a7.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
            while (rawQuery.moveToNext()) {
                try {
                    recordLogEventDropped(rawQuery.getInt(0), LogEventDropped$Reason.MESSAGE_TOO_OLD, rawQuery.getString(1));
                } catch (Throwable th) {
                    rawQuery.close();
                    throw th;
                }
            }
            rawQuery.close();
            int delete = a7.delete("events", "timestamp_ms < ?", strArr);
            a7.setTransactionSuccessful();
            return delete;
        } finally {
            a7.endTransaction();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f4741b.close();
    }

    public final ArrayList d(SQLiteDatabase sQLiteDatabase, E e3, int i2) {
        ArrayList arrayList = new ArrayList();
        Long b7 = b(sQLiteDatabase, e3);
        if (b7 == null) {
            return arrayList;
        }
        f(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{b7.toString()}, null, null, null, String.valueOf(i2)), new C0082f(this, arrayList, e3, 5));
        return arrayList;
    }

    public long getNextCallTime(E e3) {
        Cursor rawQuery = a().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{e3.getBackendName(), String.valueOf(AbstractC0806a.toInt(e3.getPriority()))});
        try {
            Long valueOf = rawQuery.moveToNext() ? Long.valueOf(rawQuery.getLong(0)) : 0L;
            rawQuery.close();
            return valueOf.longValue();
        } catch (Throwable th) {
            rawQuery.close();
            throw th;
        }
    }

    public boolean hasPendingEventsFor(E e3) {
        return ((Boolean) c(new n(this, e3, 1))).booleanValue();
    }

    public Iterable<E> loadActiveContexts() {
        SQLiteDatabase a7 = a();
        a7.beginTransaction();
        try {
            List list = (List) f(a7.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new J0.g(12));
            a7.setTransactionSuccessful();
            a7.endTransaction();
            return list;
        } catch (Throwable th) {
            a7.endTransaction();
            throw th;
        }
    }

    public Iterable<m> loadBatch(E e3) {
        return (Iterable) c(new n(this, e3, 0));
    }

    public V2.b loadClientMetrics() {
        V2.a newBuilder = V2.b.newBuilder();
        HashMap hashMap = new HashMap();
        SQLiteDatabase a7 = a();
        a7.beginTransaction();
        try {
            V2.b bVar = (V2.b) f(a7.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new C0082f(this, hashMap, newBuilder, 7));
            a7.setTransactionSuccessful();
            return bVar;
        } finally {
            a7.endTransaction();
        }
    }

    public m persist(E e3, S2.u uVar) {
        W2.a.d("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", e3.getPriority(), uVar.getTransportName(), e3.getBackendName());
        long longValue = ((Long) c(new C0082f(this, uVar, e3, 6))).longValue();
        if (longValue < 1) {
            return null;
        }
        return m.create(longValue, e3, uVar);
    }

    public void recordFailure(Iterable<m> iterable) {
        if (iterable.iterator().hasNext()) {
            c(new X4.a(4, this, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + e(iterable)));
        }
    }

    public void recordLogEventDropped(long j7, LogEventDropped$Reason logEventDropped$Reason, String str) {
        c(new Z2.l(str, j7, logEventDropped$Reason));
    }

    public void recordNextCallTime(E e3, long j7) {
        c(new o(j7, e3));
    }

    public void recordSuccess(Iterable<m> iterable) {
        if (iterable.iterator().hasNext()) {
            a().compileStatement("DELETE FROM events WHERE _id in " + e(iterable)).execute();
        }
    }

    public void resetClientMetrics() {
        SQLiteDatabase a7 = a();
        a7.beginTransaction();
        try {
            a7.compileStatement("DELETE FROM log_event_dropped").execute();
            a7.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.f4742e.getTime()).execute();
            a7.setTransactionSuccessful();
        } finally {
            a7.endTransaction();
        }
    }

    public <T> T runCriticalSection(InterfaceC0650a interfaceC0650a) {
        SQLiteDatabase a7 = a();
        InterfaceC0724a interfaceC0724a = this.f4743f;
        long time = interfaceC0724a.getTime();
        while (true) {
            try {
                a7.beginTransaction();
                try {
                    T t6 = (T) interfaceC0650a.execute();
                    a7.setTransactionSuccessful();
                    return t6;
                } finally {
                    a7.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e3) {
                if (interfaceC0724a.getTime() >= ((C0383a) this.f4744j).f4722d + time) {
                    throw new SynchronizationException("Timed out while trying to acquire the lock.", e3);
                }
                SystemClock.sleep(50L);
            }
        }
    }
}
