package Z2;

import S2.E;
import a3.r;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import b3.InterfaceC0650a;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import java.util.HashMap;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements InterfaceC0650a, a3.p, ListenerSet.Event, Continuation {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f4490b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4491e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f4492f;

    public /* synthetic */ l(ConfigFetchHandler configFetchHandler, long j7, HashMap hashMap) {
        this.f4491e = configFetchHandler;
        this.f4490b = j7;
        this.f4492f = hashMap;
    }

    @Override // a3.p
    public Object apply(Object obj) {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        LogEventDropped$Reason logEventDropped$Reason = (LogEventDropped$Reason) this.f4492f;
        String num = Integer.toString(logEventDropped$Reason.getNumber());
        String str = (String) this.f4491e;
        boolean booleanValue = ((Boolean) r.f(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, num}), new J0.g(11))).booleanValue();
        long j7 = this.f4490b;
        if (booleanValue) {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j7 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(logEventDropped$Reason.getNumber())});
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(logEventDropped$Reason.getNumber()));
            contentValues.put("events_dropped_count", Long.valueOf(j7));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        }
        return null;
    }

    @Override // b3.InterfaceC0650a
    public Object execute() {
        m mVar = (m) this.f4491e;
        ((r) mVar.f4495c).recordNextCallTime((E) this.f4492f, mVar.f4499g.getTime() + this.f4490b);
        return null;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onRenderedFirstFrame((AnalyticsListener.EventTime) this.f4491e, this.f4492f, this.f4490b);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        Task lambda$fetch$0;
        lambda$fetch$0 = ((ConfigFetchHandler) this.f4491e).lambda$fetch$0(this.f4490b, (HashMap) this.f4492f, task);
        return lambda$fetch$0;
    }

    public /* synthetic */ l(Object obj, long j7, Object obj2) {
        this.f4491e = obj;
        this.f4492f = obj2;
        this.f4490b = j7;
    }
}
