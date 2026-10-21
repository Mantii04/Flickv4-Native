package K1;

import B1.C0026f;
import B1.C0028h;
import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p1.AbstractC1488a;
import p1.AbstractC1489b;

/* loaded from: classes.dex */
public final class U implements F {

    /* renamed from: a, reason: collision with root package name */
    public final RoomDatabase f1614a;

    /* renamed from: b, reason: collision with root package name */
    public final K f1615b;

    /* renamed from: c, reason: collision with root package name */
    public final L f1616c;

    /* renamed from: d, reason: collision with root package name */
    public final M f1617d;

    /* renamed from: e, reason: collision with root package name */
    public final N f1618e;

    /* renamed from: f, reason: collision with root package name */
    public final O f1619f;

    /* renamed from: g, reason: collision with root package name */
    public final P f1620g;

    /* renamed from: h, reason: collision with root package name */
    public final Q f1621h;

    /* renamed from: i, reason: collision with root package name */
    public final S f1622i;

    /* renamed from: j, reason: collision with root package name */
    public final T f1623j;

    /* renamed from: k, reason: collision with root package name */
    public final G f1624k;

    /* renamed from: l, reason: collision with root package name */
    public final H f1625l;

    public U(RoomDatabase roomDatabase) {
        this.f1614a = roomDatabase;
        this.f1615b = new K(roomDatabase);
        this.f1616c = new L(roomDatabase);
        this.f1617d = new M(roomDatabase);
        this.f1618e = new N(roomDatabase);
        this.f1619f = new O(roomDatabase);
        this.f1620g = new P(roomDatabase);
        this.f1621h = new Q(roomDatabase);
        this.f1622i = new S(roomDatabase);
        this.f1623j = new T(roomDatabase);
        this.f1624k = new G(roomDatabase);
        this.f1625l = new H(roomDatabase);
        new I(roomDatabase);
        new J(roomDatabase);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.EMPTY_LIST;
    }

    public void delete(String str) {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        M m7 = this.f1617d;
        r1.p acquire = m7.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        roomDatabase.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
            m7.release(acquire);
        }
    }

    public List<E> getAllEligibleWorkSpecsForScheduling(int i2) {
        n1.O o6;
        n1.O acquire = n1.O.acquire("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?", 1);
        acquire.bindLong(1, i2);
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            int columnIndexOrThrow = AbstractC1488a.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = AbstractC1488a.getColumnIndexOrThrow(query, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = AbstractC1488a.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = AbstractC1488a.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = AbstractC1488a.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = AbstractC1488a.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = AbstractC1488a.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = AbstractC1488a.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = AbstractC1488a.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = AbstractC1488a.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = AbstractC1488a.getColumnIndexOrThrow(query, "last_enqueue_time");
            o6 = acquire;
            try {
                int columnIndexOrThrow14 = AbstractC1488a.getColumnIndexOrThrow(query, "minimum_retention_duration");
                int columnIndexOrThrow15 = AbstractC1488a.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = AbstractC1488a.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = AbstractC1488a.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = AbstractC1488a.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = AbstractC1488a.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = AbstractC1488a.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow21 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow22 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow23 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow24 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow25 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow26 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow27 = AbstractC1488a.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i7 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    WorkInfo$State intToState = c0.intToState(query.getInt(columnIndexOrThrow2));
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    C0028h fromByteArray = C0028h.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    C0028h fromByteArray2 = C0028h.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j7 = query.getLong(columnIndexOrThrow7);
                    long j8 = query.getLong(columnIndexOrThrow8);
                    long j9 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = c0.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j10 = query.getLong(columnIndexOrThrow12);
                    long j11 = query.getLong(columnIndexOrThrow13);
                    int i9 = i7;
                    long j12 = query.getLong(i9);
                    int i10 = columnIndexOrThrow;
                    int i11 = columnIndexOrThrow15;
                    long j13 = query.getLong(i11);
                    columnIndexOrThrow15 = i11;
                    int i12 = columnIndexOrThrow16;
                    boolean z6 = query.getInt(i12) != 0;
                    columnIndexOrThrow16 = i12;
                    int i13 = columnIndexOrThrow17;
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = c0.intToOutOfQuotaPolicy(query.getInt(i13));
                    columnIndexOrThrow17 = i13;
                    int i14 = columnIndexOrThrow18;
                    int i15 = query.getInt(i14);
                    columnIndexOrThrow18 = i14;
                    int i16 = columnIndexOrThrow19;
                    int i17 = query.getInt(i16);
                    columnIndexOrThrow19 = i16;
                    int i18 = columnIndexOrThrow20;
                    NetworkType intToNetworkType = c0.intToNetworkType(query.getInt(i18));
                    columnIndexOrThrow20 = i18;
                    int i19 = columnIndexOrThrow21;
                    boolean z7 = query.getInt(i19) != 0;
                    columnIndexOrThrow21 = i19;
                    int i20 = columnIndexOrThrow22;
                    boolean z8 = query.getInt(i20) != 0;
                    columnIndexOrThrow22 = i20;
                    int i21 = columnIndexOrThrow23;
                    boolean z9 = query.getInt(i21) != 0;
                    columnIndexOrThrow23 = i21;
                    int i22 = columnIndexOrThrow24;
                    boolean z10 = query.getInt(i22) != 0;
                    columnIndexOrThrow24 = i22;
                    int i23 = columnIndexOrThrow25;
                    long j14 = query.getLong(i23);
                    columnIndexOrThrow25 = i23;
                    int i24 = columnIndexOrThrow26;
                    long j15 = query.getLong(i24);
                    columnIndexOrThrow26 = i24;
                    int i25 = columnIndexOrThrow27;
                    columnIndexOrThrow27 = i25;
                    arrayList.add(new E(string, intToState, string2, string3, fromByteArray, fromByteArray2, j7, j8, j9, new C0026f(intToNetworkType, z7, z8, z9, z10, j14, j15, c0.byteArrayToSetOfTriggers(query.isNull(i25) ? null : query.getBlob(i25))), i8, intToBackoffPolicy, j10, j11, j12, j13, z6, intToOutOfQuotaPolicy, i15, i17));
                    columnIndexOrThrow = i10;
                    i7 = i9;
                }
                query.close();
                o6.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                o6.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            o6 = acquire;
        }
    }

    public List<E> getEligibleWorkForScheduling(int i2) {
        n1.O o6;
        n1.O acquire = n1.O.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        acquire.bindLong(1, i2);
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            int columnIndexOrThrow = AbstractC1488a.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = AbstractC1488a.getColumnIndexOrThrow(query, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = AbstractC1488a.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = AbstractC1488a.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = AbstractC1488a.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = AbstractC1488a.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = AbstractC1488a.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = AbstractC1488a.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = AbstractC1488a.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = AbstractC1488a.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = AbstractC1488a.getColumnIndexOrThrow(query, "last_enqueue_time");
            o6 = acquire;
            try {
                int columnIndexOrThrow14 = AbstractC1488a.getColumnIndexOrThrow(query, "minimum_retention_duration");
                int columnIndexOrThrow15 = AbstractC1488a.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = AbstractC1488a.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = AbstractC1488a.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = AbstractC1488a.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = AbstractC1488a.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = AbstractC1488a.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow21 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow22 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow23 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow24 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow25 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow26 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow27 = AbstractC1488a.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i7 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    WorkInfo$State intToState = c0.intToState(query.getInt(columnIndexOrThrow2));
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    C0028h fromByteArray = C0028h.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    C0028h fromByteArray2 = C0028h.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j7 = query.getLong(columnIndexOrThrow7);
                    long j8 = query.getLong(columnIndexOrThrow8);
                    long j9 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = c0.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j10 = query.getLong(columnIndexOrThrow12);
                    long j11 = query.getLong(columnIndexOrThrow13);
                    int i9 = i7;
                    long j12 = query.getLong(i9);
                    int i10 = columnIndexOrThrow;
                    int i11 = columnIndexOrThrow15;
                    long j13 = query.getLong(i11);
                    columnIndexOrThrow15 = i11;
                    int i12 = columnIndexOrThrow16;
                    boolean z6 = query.getInt(i12) != 0;
                    columnIndexOrThrow16 = i12;
                    int i13 = columnIndexOrThrow17;
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = c0.intToOutOfQuotaPolicy(query.getInt(i13));
                    columnIndexOrThrow17 = i13;
                    int i14 = columnIndexOrThrow18;
                    int i15 = query.getInt(i14);
                    columnIndexOrThrow18 = i14;
                    int i16 = columnIndexOrThrow19;
                    int i17 = query.getInt(i16);
                    columnIndexOrThrow19 = i16;
                    int i18 = columnIndexOrThrow20;
                    NetworkType intToNetworkType = c0.intToNetworkType(query.getInt(i18));
                    columnIndexOrThrow20 = i18;
                    int i19 = columnIndexOrThrow21;
                    boolean z7 = query.getInt(i19) != 0;
                    columnIndexOrThrow21 = i19;
                    int i20 = columnIndexOrThrow22;
                    boolean z8 = query.getInt(i20) != 0;
                    columnIndexOrThrow22 = i20;
                    int i21 = columnIndexOrThrow23;
                    boolean z9 = query.getInt(i21) != 0;
                    columnIndexOrThrow23 = i21;
                    int i22 = columnIndexOrThrow24;
                    boolean z10 = query.getInt(i22) != 0;
                    columnIndexOrThrow24 = i22;
                    int i23 = columnIndexOrThrow25;
                    long j14 = query.getLong(i23);
                    columnIndexOrThrow25 = i23;
                    int i24 = columnIndexOrThrow26;
                    long j15 = query.getLong(i24);
                    columnIndexOrThrow26 = i24;
                    int i25 = columnIndexOrThrow27;
                    columnIndexOrThrow27 = i25;
                    arrayList.add(new E(string, intToState, string2, string3, fromByteArray, fromByteArray2, j7, j8, j9, new C0026f(intToNetworkType, z7, z8, z9, z10, j14, j15, c0.byteArrayToSetOfTriggers(query.isNull(i25) ? null : query.getBlob(i25))), i8, intToBackoffPolicy, j10, j11, j12, j13, z6, intToOutOfQuotaPolicy, i15, i17));
                    columnIndexOrThrow = i10;
                    i7 = i9;
                }
                query.close();
                o6.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                o6.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            o6 = acquire;
        }
    }

    public List<C0028h> getInputsFromPrerequisites(String str) {
        n1.O acquire = n1.O.acquire("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(C0028h.fromByteArray(query.isNull(0) ? null : query.getBlob(0)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public List<E> getRecentlyCompletedWork(long j7) {
        n1.O o6;
        n1.O acquire = n1.O.acquire("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC", 1);
        acquire.bindLong(1, j7);
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            int columnIndexOrThrow = AbstractC1488a.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = AbstractC1488a.getColumnIndexOrThrow(query, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = AbstractC1488a.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = AbstractC1488a.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = AbstractC1488a.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = AbstractC1488a.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = AbstractC1488a.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = AbstractC1488a.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = AbstractC1488a.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = AbstractC1488a.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = AbstractC1488a.getColumnIndexOrThrow(query, "last_enqueue_time");
            o6 = acquire;
            try {
                int columnIndexOrThrow14 = AbstractC1488a.getColumnIndexOrThrow(query, "minimum_retention_duration");
                int columnIndexOrThrow15 = AbstractC1488a.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = AbstractC1488a.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = AbstractC1488a.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = AbstractC1488a.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = AbstractC1488a.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = AbstractC1488a.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow21 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow22 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow23 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow24 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow25 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow26 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow27 = AbstractC1488a.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i2 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    WorkInfo$State intToState = c0.intToState(query.getInt(columnIndexOrThrow2));
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    C0028h fromByteArray = C0028h.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    C0028h fromByteArray2 = C0028h.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j8 = query.getLong(columnIndexOrThrow7);
                    long j9 = query.getLong(columnIndexOrThrow8);
                    long j10 = query.getLong(columnIndexOrThrow9);
                    int i7 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = c0.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j11 = query.getLong(columnIndexOrThrow12);
                    long j12 = query.getLong(columnIndexOrThrow13);
                    int i8 = i2;
                    long j13 = query.getLong(i8);
                    int i9 = columnIndexOrThrow;
                    int i10 = columnIndexOrThrow15;
                    long j14 = query.getLong(i10);
                    columnIndexOrThrow15 = i10;
                    int i11 = columnIndexOrThrow16;
                    boolean z6 = query.getInt(i11) != 0;
                    columnIndexOrThrow16 = i11;
                    int i12 = columnIndexOrThrow17;
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = c0.intToOutOfQuotaPolicy(query.getInt(i12));
                    columnIndexOrThrow17 = i12;
                    int i13 = columnIndexOrThrow18;
                    int i14 = query.getInt(i13);
                    columnIndexOrThrow18 = i13;
                    int i15 = columnIndexOrThrow19;
                    int i16 = query.getInt(i15);
                    columnIndexOrThrow19 = i15;
                    int i17 = columnIndexOrThrow20;
                    NetworkType intToNetworkType = c0.intToNetworkType(query.getInt(i17));
                    columnIndexOrThrow20 = i17;
                    int i18 = columnIndexOrThrow21;
                    boolean z7 = query.getInt(i18) != 0;
                    columnIndexOrThrow21 = i18;
                    int i19 = columnIndexOrThrow22;
                    boolean z8 = query.getInt(i19) != 0;
                    columnIndexOrThrow22 = i19;
                    int i20 = columnIndexOrThrow23;
                    boolean z9 = query.getInt(i20) != 0;
                    columnIndexOrThrow23 = i20;
                    int i21 = columnIndexOrThrow24;
                    boolean z10 = query.getInt(i21) != 0;
                    columnIndexOrThrow24 = i21;
                    int i22 = columnIndexOrThrow25;
                    long j15 = query.getLong(i22);
                    columnIndexOrThrow25 = i22;
                    int i23 = columnIndexOrThrow26;
                    long j16 = query.getLong(i23);
                    columnIndexOrThrow26 = i23;
                    int i24 = columnIndexOrThrow27;
                    columnIndexOrThrow27 = i24;
                    arrayList.add(new E(string, intToState, string2, string3, fromByteArray, fromByteArray2, j8, j9, j10, new C0026f(intToNetworkType, z7, z8, z9, z10, j15, j16, c0.byteArrayToSetOfTriggers(query.isNull(i24) ? null : query.getBlob(i24))), i7, intToBackoffPolicy, j11, j12, j13, j14, z6, intToOutOfQuotaPolicy, i14, i16));
                    columnIndexOrThrow = i9;
                    i2 = i8;
                }
                query.close();
                o6.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                o6.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            o6 = acquire;
        }
    }

    public List<E> getRunningWork() {
        n1.O o6;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        n1.O acquire = n1.O.acquire("SELECT * FROM workspec WHERE state=1", 0);
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            columnIndexOrThrow = AbstractC1488a.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = AbstractC1488a.getColumnIndexOrThrow(query, RemoteConfigConstants.ResponseFieldKey.STATE);
            columnIndexOrThrow3 = AbstractC1488a.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = AbstractC1488a.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = AbstractC1488a.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = AbstractC1488a.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = AbstractC1488a.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = AbstractC1488a.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = AbstractC1488a.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = AbstractC1488a.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = AbstractC1488a.getColumnIndexOrThrow(query, "last_enqueue_time");
            o6 = acquire;
        } catch (Throwable th) {
            th = th;
            o6 = acquire;
        }
        try {
            int columnIndexOrThrow14 = AbstractC1488a.getColumnIndexOrThrow(query, "minimum_retention_duration");
            int columnIndexOrThrow15 = AbstractC1488a.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = AbstractC1488a.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = AbstractC1488a.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = AbstractC1488a.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = AbstractC1488a.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = AbstractC1488a.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow21 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow22 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow23 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow24 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow25 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow26 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow27 = AbstractC1488a.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i2 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                WorkInfo$State intToState = c0.intToState(query.getInt(columnIndexOrThrow2));
                String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                C0028h fromByteArray = C0028h.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                C0028h fromByteArray2 = C0028h.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                long j7 = query.getLong(columnIndexOrThrow7);
                long j8 = query.getLong(columnIndexOrThrow8);
                long j9 = query.getLong(columnIndexOrThrow9);
                int i7 = query.getInt(columnIndexOrThrow10);
                BackoffPolicy intToBackoffPolicy = c0.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                long j10 = query.getLong(columnIndexOrThrow12);
                long j11 = query.getLong(columnIndexOrThrow13);
                int i8 = i2;
                long j12 = query.getLong(i8);
                int i9 = columnIndexOrThrow;
                int i10 = columnIndexOrThrow15;
                long j13 = query.getLong(i10);
                columnIndexOrThrow15 = i10;
                int i11 = columnIndexOrThrow16;
                boolean z6 = query.getInt(i11) != 0;
                columnIndexOrThrow16 = i11;
                int i12 = columnIndexOrThrow17;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = c0.intToOutOfQuotaPolicy(query.getInt(i12));
                columnIndexOrThrow17 = i12;
                int i13 = columnIndexOrThrow18;
                int i14 = query.getInt(i13);
                columnIndexOrThrow18 = i13;
                int i15 = columnIndexOrThrow19;
                int i16 = query.getInt(i15);
                columnIndexOrThrow19 = i15;
                int i17 = columnIndexOrThrow20;
                NetworkType intToNetworkType = c0.intToNetworkType(query.getInt(i17));
                columnIndexOrThrow20 = i17;
                int i18 = columnIndexOrThrow21;
                boolean z7 = query.getInt(i18) != 0;
                columnIndexOrThrow21 = i18;
                int i19 = columnIndexOrThrow22;
                boolean z8 = query.getInt(i19) != 0;
                columnIndexOrThrow22 = i19;
                int i20 = columnIndexOrThrow23;
                boolean z9 = query.getInt(i20) != 0;
                columnIndexOrThrow23 = i20;
                int i21 = columnIndexOrThrow24;
                boolean z10 = query.getInt(i21) != 0;
                columnIndexOrThrow24 = i21;
                int i22 = columnIndexOrThrow25;
                long j14 = query.getLong(i22);
                columnIndexOrThrow25 = i22;
                int i23 = columnIndexOrThrow26;
                long j15 = query.getLong(i23);
                columnIndexOrThrow26 = i23;
                int i24 = columnIndexOrThrow27;
                columnIndexOrThrow27 = i24;
                arrayList.add(new E(string, intToState, string2, string3, fromByteArray, fromByteArray2, j7, j8, j9, new C0026f(intToNetworkType, z7, z8, z9, z10, j14, j15, c0.byteArrayToSetOfTriggers(query.isNull(i24) ? null : query.getBlob(i24))), i7, intToBackoffPolicy, j10, j11, j12, j13, z6, intToOutOfQuotaPolicy, i14, i16));
                columnIndexOrThrow = i9;
                i2 = i8;
            }
            query.close();
            o6.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            o6.release();
            throw th;
        }
    }

    public List<E> getScheduledWork() {
        n1.O o6;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        n1.O acquire = n1.O.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            columnIndexOrThrow = AbstractC1488a.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = AbstractC1488a.getColumnIndexOrThrow(query, RemoteConfigConstants.ResponseFieldKey.STATE);
            columnIndexOrThrow3 = AbstractC1488a.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = AbstractC1488a.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = AbstractC1488a.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = AbstractC1488a.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = AbstractC1488a.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = AbstractC1488a.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = AbstractC1488a.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = AbstractC1488a.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = AbstractC1488a.getColumnIndexOrThrow(query, "last_enqueue_time");
            o6 = acquire;
        } catch (Throwable th) {
            th = th;
            o6 = acquire;
        }
        try {
            int columnIndexOrThrow14 = AbstractC1488a.getColumnIndexOrThrow(query, "minimum_retention_duration");
            int columnIndexOrThrow15 = AbstractC1488a.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = AbstractC1488a.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = AbstractC1488a.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = AbstractC1488a.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = AbstractC1488a.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = AbstractC1488a.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow21 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow22 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow23 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow24 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow25 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow26 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow27 = AbstractC1488a.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i2 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                WorkInfo$State intToState = c0.intToState(query.getInt(columnIndexOrThrow2));
                String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                C0028h fromByteArray = C0028h.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                C0028h fromByteArray2 = C0028h.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                long j7 = query.getLong(columnIndexOrThrow7);
                long j8 = query.getLong(columnIndexOrThrow8);
                long j9 = query.getLong(columnIndexOrThrow9);
                int i7 = query.getInt(columnIndexOrThrow10);
                BackoffPolicy intToBackoffPolicy = c0.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                long j10 = query.getLong(columnIndexOrThrow12);
                long j11 = query.getLong(columnIndexOrThrow13);
                int i8 = i2;
                long j12 = query.getLong(i8);
                int i9 = columnIndexOrThrow;
                int i10 = columnIndexOrThrow15;
                long j13 = query.getLong(i10);
                columnIndexOrThrow15 = i10;
                int i11 = columnIndexOrThrow16;
                boolean z6 = query.getInt(i11) != 0;
                columnIndexOrThrow16 = i11;
                int i12 = columnIndexOrThrow17;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = c0.intToOutOfQuotaPolicy(query.getInt(i12));
                columnIndexOrThrow17 = i12;
                int i13 = columnIndexOrThrow18;
                int i14 = query.getInt(i13);
                columnIndexOrThrow18 = i13;
                int i15 = columnIndexOrThrow19;
                int i16 = query.getInt(i15);
                columnIndexOrThrow19 = i15;
                int i17 = columnIndexOrThrow20;
                NetworkType intToNetworkType = c0.intToNetworkType(query.getInt(i17));
                columnIndexOrThrow20 = i17;
                int i18 = columnIndexOrThrow21;
                boolean z7 = query.getInt(i18) != 0;
                columnIndexOrThrow21 = i18;
                int i19 = columnIndexOrThrow22;
                boolean z8 = query.getInt(i19) != 0;
                columnIndexOrThrow22 = i19;
                int i20 = columnIndexOrThrow23;
                boolean z9 = query.getInt(i20) != 0;
                columnIndexOrThrow23 = i20;
                int i21 = columnIndexOrThrow24;
                boolean z10 = query.getInt(i21) != 0;
                columnIndexOrThrow24 = i21;
                int i22 = columnIndexOrThrow25;
                long j14 = query.getLong(i22);
                columnIndexOrThrow25 = i22;
                int i23 = columnIndexOrThrow26;
                long j15 = query.getLong(i23);
                columnIndexOrThrow26 = i23;
                int i24 = columnIndexOrThrow27;
                columnIndexOrThrow27 = i24;
                arrayList.add(new E(string, intToState, string2, string3, fromByteArray, fromByteArray2, j7, j8, j9, new C0026f(intToNetworkType, z7, z8, z9, z10, j14, j15, c0.byteArrayToSetOfTriggers(query.isNull(i24) ? null : query.getBlob(i24))), i7, intToBackoffPolicy, j10, j11, j12, j13, z6, intToOutOfQuotaPolicy, i14, i16));
                columnIndexOrThrow = i9;
                i2 = i8;
            }
            query.close();
            o6.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            o6.release();
            throw th;
        }
    }

    public WorkInfo$State getState(String str) {
        n1.O acquire = n1.O.acquire("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        WorkInfo$State workInfo$State = null;
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                Integer valueOf = query.isNull(0) ? null : Integer.valueOf(query.getInt(0));
                if (valueOf != null) {
                    workInfo$State = c0.intToState(valueOf.intValue());
                }
            }
            return workInfo$State;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public List<String> getUnfinishedWorkWithName(String str) {
        n1.O acquire = n1.O.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public E getWorkSpec(String str) {
        n1.O o6;
        E e3;
        n1.O acquire = n1.O.acquire("SELECT * FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            int columnIndexOrThrow = AbstractC1488a.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = AbstractC1488a.getColumnIndexOrThrow(query, RemoteConfigConstants.ResponseFieldKey.STATE);
            int columnIndexOrThrow3 = AbstractC1488a.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = AbstractC1488a.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = AbstractC1488a.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = AbstractC1488a.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = AbstractC1488a.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = AbstractC1488a.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = AbstractC1488a.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = AbstractC1488a.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = AbstractC1488a.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = AbstractC1488a.getColumnIndexOrThrow(query, "last_enqueue_time");
            o6 = acquire;
            try {
                int columnIndexOrThrow14 = AbstractC1488a.getColumnIndexOrThrow(query, "minimum_retention_duration");
                int columnIndexOrThrow15 = AbstractC1488a.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = AbstractC1488a.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = AbstractC1488a.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = AbstractC1488a.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = AbstractC1488a.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = AbstractC1488a.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow21 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow22 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow23 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow24 = AbstractC1488a.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow25 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow26 = AbstractC1488a.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow27 = AbstractC1488a.getColumnIndexOrThrow(query, "content_uri_triggers");
                if (query.moveToFirst()) {
                    e3 = new E(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow), c0.intToState(query.getInt(columnIndexOrThrow2)), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4), C0028h.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5)), C0028h.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6)), query.getLong(columnIndexOrThrow7), query.getLong(columnIndexOrThrow8), query.getLong(columnIndexOrThrow9), new C0026f(c0.intToNetworkType(query.getInt(columnIndexOrThrow20)), query.getInt(columnIndexOrThrow21) != 0, query.getInt(columnIndexOrThrow22) != 0, query.getInt(columnIndexOrThrow23) != 0, query.getInt(columnIndexOrThrow24) != 0, query.getLong(columnIndexOrThrow25), query.getLong(columnIndexOrThrow26), c0.byteArrayToSetOfTriggers(query.isNull(columnIndexOrThrow27) ? null : query.getBlob(columnIndexOrThrow27))), query.getInt(columnIndexOrThrow10), c0.intToBackoffPolicy(query.getInt(columnIndexOrThrow11)), query.getLong(columnIndexOrThrow12), query.getLong(columnIndexOrThrow13), query.getLong(columnIndexOrThrow14), query.getLong(columnIndexOrThrow15), query.getInt(columnIndexOrThrow16) != 0, c0.intToOutOfQuotaPolicy(query.getInt(columnIndexOrThrow17)), query.getInt(columnIndexOrThrow18), query.getInt(columnIndexOrThrow19));
                } else {
                    e3 = null;
                }
                query.close();
                o6.release();
                return e3;
            } catch (Throwable th) {
                th = th;
                query.close();
                o6.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            o6 = acquire;
        }
    }

    public List<D> getWorkSpecIdAndStatesForName(String str) {
        n1.O acquire = n1.O.acquire("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new D(query.isNull(0) ? null : query.getString(0), c0.intToState(query.getInt(1))));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public boolean hasUnfinishedWork() {
        boolean z6 = false;
        n1.O acquire = n1.O.acquire("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                if (query.getInt(0) != 0) {
                    z6 = true;
                }
            }
            return z6;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public void incrementPeriodCount(String str) {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        O o6 = this.f1619f;
        r1.p acquire = o6.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        roomDatabase.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
            o6.release(acquire);
        }
    }

    public int incrementWorkSpecRunAttemptCount(String str) {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        S s6 = this.f1622i;
        r1.p acquire = s6.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        roomDatabase.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            roomDatabase.endTransaction();
            s6.release(acquire);
        }
    }

    public void insertWorkSpec(E e3) {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        roomDatabase.beginTransaction();
        try {
            this.f1615b.insert(e3);
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
        }
    }

    public int markWorkSpecScheduled(String str, long j7) {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        G g7 = this.f1624k;
        r1.p acquire = g7.acquire();
        acquire.bindLong(1, j7);
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        roomDatabase.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            roomDatabase.endTransaction();
            g7.release(acquire);
        }
    }

    public int resetScheduledState() {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        H h7 = this.f1625l;
        r1.p acquire = h7.acquire();
        roomDatabase.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            roomDatabase.endTransaction();
            h7.release(acquire);
        }
    }

    public int resetWorkSpecRunAttemptCount(String str) {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        T t6 = this.f1623j;
        r1.p acquire = t6.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        roomDatabase.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            roomDatabase.endTransaction();
            t6.release(acquire);
        }
    }

    public void setLastEnqueuedTime(String str, long j7) {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        Q q6 = this.f1621h;
        r1.p acquire = q6.acquire();
        acquire.bindLong(1, j7);
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        roomDatabase.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
            q6.release(acquire);
        }
    }

    public void setOutput(String str, C0028h c0028h) {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        P p6 = this.f1620g;
        r1.p acquire = p6.acquire();
        byte[] byteArrayInternal = C0028h.toByteArrayInternal(c0028h);
        if (byteArrayInternal == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindBlob(1, byteArrayInternal);
        }
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        roomDatabase.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
            p6.release(acquire);
        }
    }

    public int setState(WorkInfo$State workInfo$State, String str) {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        N n7 = this.f1618e;
        r1.p acquire = n7.acquire();
        acquire.bindLong(1, c0.stateToInt(workInfo$State));
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        roomDatabase.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            roomDatabase.endTransaction();
            n7.release(acquire);
        }
    }

    public void updateWorkSpec(E e3) {
        RoomDatabase roomDatabase = this.f1614a;
        roomDatabase.assertNotSuspendingTransaction();
        roomDatabase.beginTransaction();
        try {
            this.f1616c.handle(e3);
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
        }
    }
}
