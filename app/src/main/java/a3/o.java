package a3;

import S2.E;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic;
import d3.AbstractC0806a;
import java.util.Deque;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements p, SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f4736b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4737e;

    public /* synthetic */ o(long j7, Object obj) {
        this.f4736b = j7;
        this.f4737e = obj;
    }

    @Override // a3.p
    public Object apply(Object obj) {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(this.f4736b));
        E e3 = (E) this.f4737e;
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{e3.getBackendName(), String.valueOf(AbstractC0806a.toInt(e3.getPriority()))}) < 1) {
            contentValues.put("backend_name", e3.getBackendName());
            contentValues.put("priority", Integer.valueOf(AbstractC0806a.toInt(e3.getPriority())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction
    public boolean shouldEvictSample(Deque deque) {
        boolean lambda$getAgeBasedEvictionFunction$1;
        lambda$getAgeBasedEvictionFunction$1 = SlidingWeightedAverageBandwidthStatistic.lambda$getAgeBasedEvictionFunction$1(this.f4736b, (Clock) this.f4737e, deque);
        return lambda$getAgeBasedEvictionFunction$1;
    }
}
