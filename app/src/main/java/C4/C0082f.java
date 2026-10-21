package C4;

import a3.AbstractC0387e;
import a3.C0383a;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import android.view.MenuItem;
import android.widget.Toast;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import b3.InterfaceC0650a;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.internal.ConfigContainer;
import com.google.firebase.remoteconfig.internal.ConfigRealtimeHttpClient;
import com.google.firebase.remoteconfig.internal.rollouts.RolloutsStateSubscriptionsHandler;
import com.google.firebase.remoteconfig.interop.rollouts.RolloutsStateSubscriber;
import d3.AbstractC0806a;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.Anime;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.adult.AdultVideo;
import flix.com.vision.tv.MyImportActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import l.C1191v1;
import l.InterfaceC1188u1;

/* renamed from: C4.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0082f implements InterfaceC1188u1, InterfaceC0650a, a3.p, Consumer, DefaultTrackSelector.TrackInfo.Factory, Continuation, OnSuccessListener, I.e {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f672b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f673e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f674f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f675j;

    public /* synthetic */ C0082f(Object obj, Object obj2, Object obj3, int i2) {
        this.f672b = i2;
        this.f674f = obj;
        this.f675j = obj2;
        this.f673e = obj3;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((MediaSourceEventListener.EventDispatcher) this.f674f).lambda$upstreamDiscarded$4((MediaSource.MediaPeriodId) this.f675j, (MediaLoadData) this.f673e, (MediaSourceEventListener) obj);
    }

    @Override // a3.p
    public Object apply(Object obj) {
        long insert;
        switch (this.f672b) {
            case 5:
                Cursor cursor = (Cursor) obj;
                a3.r rVar = (a3.r) this.f674f;
                rVar.getClass();
                while (cursor.moveToNext()) {
                    long j7 = cursor.getLong(0);
                    boolean z6 = cursor.getInt(7) != 0;
                    S2.t uptimeMillis = S2.u.builder().setTransportName(cursor.getString(1)).setEventMillis(cursor.getLong(2)).setUptimeMillis(cursor.getLong(3));
                    if (z6) {
                        String string = cursor.getString(4);
                        uptimeMillis.setEncodedPayload(new S2.s(string == null ? a3.r.f4740n : P2.b.of(string), cursor.getBlob(5)));
                    } else {
                        String string2 = cursor.getString(4);
                        P2.b of = string2 == null ? a3.r.f4740n : P2.b.of(string2);
                        Cursor query = rVar.a().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j7)}, null, null, "sequence_num");
                        try {
                            ArrayList arrayList = new ArrayList();
                            int i2 = 0;
                            while (query.moveToNext()) {
                                byte[] blob = query.getBlob(0);
                                arrayList.add(blob);
                                i2 += blob.length;
                            }
                            byte[] bArr = new byte[i2];
                            int i7 = 0;
                            for (int i8 = 0; i8 < arrayList.size(); i8++) {
                                byte[] bArr2 = (byte[]) arrayList.get(i8);
                                System.arraycopy(bArr2, 0, bArr, i7, bArr2.length);
                                i7 += bArr2.length;
                            }
                            query.close();
                            uptimeMillis.setEncodedPayload(new S2.s(of, bArr));
                        } catch (Throwable th) {
                            query.close();
                            throw th;
                        }
                    }
                    if (!cursor.isNull(6)) {
                        uptimeMillis.setCode(Integer.valueOf(cursor.getInt(6)));
                    }
                    ((ArrayList) this.f675j).add(a3.m.create(j7, (S2.E) this.f673e, uptimeMillis.build()));
                }
                return null;
            case 6:
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                a3.r rVar2 = (a3.r) this.f674f;
                long simpleQueryForLong = rVar2.a().compileStatement("PRAGMA page_size").simpleQueryForLong() * rVar2.a().compileStatement("PRAGMA page_count").simpleQueryForLong();
                C0383a c0383a = (C0383a) rVar2.f4744j;
                long j8 = c0383a.f4720b;
                S2.u uVar = (S2.u) this.f675j;
                if (simpleQueryForLong >= j8) {
                    rVar2.recordLogEventDropped(1L, LogEventDropped$Reason.CACHE_FULL, uVar.getTransportName());
                    return -1L;
                }
                S2.E e3 = (S2.E) this.f673e;
                Long b7 = a3.r.b(sQLiteDatabase, e3);
                if (b7 != null) {
                    insert = b7.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", e3.getBackendName());
                    contentValues.put("priority", Integer.valueOf(AbstractC0806a.toInt(e3.getPriority())));
                    contentValues.put("next_request_ms", (Integer) 0);
                    if (e3.getExtras() != null) {
                        contentValues.put("extras", Base64.encodeToString(e3.getExtras(), 0));
                    }
                    insert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                byte[] bytes = uVar.getEncodedPayload().getBytes();
                int length = bytes.length;
                int i9 = c0383a.f4724f;
                boolean z7 = length <= i9;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(insert));
                contentValues2.put("transport_name", uVar.getTransportName());
                contentValues2.put("timestamp_ms", Long.valueOf(uVar.getEventMillis()));
                contentValues2.put("uptime_ms", Long.valueOf(uVar.getUptimeMillis()));
                contentValues2.put("payload_encoding", uVar.getEncodedPayload().getEncoding().getName());
                contentValues2.put("code", uVar.getCode());
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z7));
                contentValues2.put("payload", z7 ? bytes : new byte[0]);
                long insert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z7) {
                    int ceil = (int) Math.ceil(bytes.length / i9);
                    for (int i10 = 1; i10 <= ceil; i10++) {
                        byte[] copyOfRange = Arrays.copyOfRange(bytes, (i10 - 1) * i9, Math.min(i10 * i9, bytes.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(insert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i10));
                        contentValues3.put("bytes", copyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry<String, String> entry : uVar.getMetadata().entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(insert2));
                    contentValues4.put("name", entry.getKey());
                    contentValues4.put(FirebaseAnalytics.Param.VALUE, entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(insert2);
            default:
                Cursor cursor2 = (Cursor) obj;
                a3.r rVar3 = (a3.r) this.f674f;
                while (true) {
                    boolean moveToNext = cursor2.moveToNext();
                    HashMap hashMap = (HashMap) this.f675j;
                    if (moveToNext) {
                        String string3 = cursor2.getString(0);
                        int i11 = cursor2.getInt(1);
                        LogEventDropped$Reason logEventDropped$Reason = LogEventDropped$Reason.REASON_UNKNOWN;
                        if (i11 != logEventDropped$Reason.getNumber()) {
                            LogEventDropped$Reason logEventDropped$Reason2 = LogEventDropped$Reason.MESSAGE_TOO_OLD;
                            if (i11 != logEventDropped$Reason2.getNumber()) {
                                logEventDropped$Reason2 = LogEventDropped$Reason.CACHE_FULL;
                                if (i11 != logEventDropped$Reason2.getNumber()) {
                                    logEventDropped$Reason2 = LogEventDropped$Reason.PAYLOAD_TOO_BIG;
                                    if (i11 != logEventDropped$Reason2.getNumber()) {
                                        logEventDropped$Reason2 = LogEventDropped$Reason.MAX_RETRIES_REACHED;
                                        if (i11 != logEventDropped$Reason2.getNumber()) {
                                            logEventDropped$Reason2 = LogEventDropped$Reason.INVALID_PAYLOD;
                                            if (i11 != logEventDropped$Reason2.getNumber()) {
                                                logEventDropped$Reason2 = LogEventDropped$Reason.SERVER_ERROR;
                                                if (i11 != logEventDropped$Reason2.getNumber()) {
                                                    W2.a.d("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i11));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            logEventDropped$Reason = logEventDropped$Reason2;
                        }
                        long j9 = cursor2.getLong(2);
                        if (!hashMap.containsKey(string3)) {
                            hashMap.put(string3, new ArrayList());
                        }
                        ((List) hashMap.get(string3)).add(V2.f.newBuilder().setReason(logEventDropped$Reason).setEventsDroppedCount(j9).build());
                    } else {
                        Iterator it = hashMap.entrySet().iterator();
                        while (true) {
                            boolean hasNext = it.hasNext();
                            V2.a aVar = (V2.a) this.f673e;
                            if (!hasNext) {
                                long time = rVar3.f4742e.getTime();
                                SQLiteDatabase a7 = rVar3.a();
                                a7.beginTransaction();
                                try {
                                    Cursor rawQuery = a7.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
                                    try {
                                        rawQuery.moveToNext();
                                        V2.l build = V2.l.newBuilder().setStartMs(rawQuery.getLong(0)).setEndMs(time).build();
                                        rawQuery.close();
                                        a7.setTransactionSuccessful();
                                        a7.endTransaction();
                                        aVar.setWindow(build);
                                        aVar.setGlobalMetrics(V2.d.newBuilder().setStorageMetrics(V2.j.newBuilder().setCurrentCacheSizeBytes(rVar3.a().compileStatement("PRAGMA page_size").simpleQueryForLong() * rVar3.a().compileStatement("PRAGMA page_count").simpleQueryForLong()).setMaxCacheSizeBytes(AbstractC0387e.f4728a.f4720b).build()).build());
                                        aVar.setAppNamespace((String) rVar3.f4745m.get());
                                        return aVar.build();
                                    } catch (Throwable th2) {
                                        rawQuery.close();
                                        throw th2;
                                    }
                                } catch (Throwable th3) {
                                    a7.endTransaction();
                                    throw th3;
                                }
                            }
                            Map.Entry entry2 = (Map.Entry) it.next();
                            aVar.addLogSourceMetrics(V2.h.newBuilder().setLogSource((String) entry2.getKey()).setLogEventDroppedList((List) entry2.getValue()).build());
                        }
                    }
                }
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
    public List create(int i2, TrackGroup trackGroup, int[] iArr) {
        List lambda$selectTextTrack$4;
        lambda$selectTextTrack$4 = DefaultTrackSelector.lambda$selectTextTrack$4((DefaultTrackSelector.Parameters) this.f674f, (String) this.f675j, (String) this.f673e, i2, trackGroup, iArr);
        return lambda$selectTextTrack$4;
    }

    @Override // b3.InterfaceC0650a
    public Object execute() {
        Y2.b bVar = (Y2.b) this.f674f;
        a3.r rVar = (a3.r) bVar.f4376d;
        S2.E e3 = (S2.E) this.f675j;
        rVar.persist(e3, (S2.u) this.f673e);
        ((Z2.d) bVar.f4373a).schedule(e3, 1);
        return null;
    }

    @Override // I.e
    public void onCancel() {
        Runnable runnable = (Runnable) this.f674f;
        if (runnable != null) {
            runnable.run();
        } else {
            ((androidx.transition.e) this.f675j).cancel();
            ((Runnable) this.f673e).run();
        }
    }

    @Override // l.InterfaceC1188u1
    public boolean onMenuItemClick(MenuItem menuItem) {
        switch (this.f672b) {
            case 0:
                C0084h c0084h = (C0084h) this.f674f;
                c0084h.getClass();
                int itemId = menuItem.getItemId();
                int i2 = R.id.action_add_favorites_live_tv;
                AdultVideo adultVideo = (AdultVideo) this.f675j;
                Activity activity = c0084h.f688e;
                if (itemId == i2) {
                    App.getInstance().f14439r.addFavoritesAdult(adultVideo);
                    Toast.makeText(activity, activity.getString(R.string.added_fav_label), 0).show();
                }
                if (menuItem.getItemId() == R.id.action_remove_favorites_live_tv) {
                    App.getInstance().f14439r.deleteFavoriteAdultVideo(adultVideo);
                    Toast.makeText(activity, activity.getString(R.string.removed_fav_label), 0).show();
                }
                ((C1191v1) this.f673e).dismiss();
                break;
            case 1:
                C0087k c0087k = (C0087k) this.f674f;
                c0087k.getClass();
                int itemId2 = menuItem.getItemId();
                int i7 = R.id.action_add_favorites_live_tv;
                Anime anime = (Anime) this.f675j;
                Context context = c0087k.f714d;
                if (itemId2 == i7) {
                    App.getInstance().f14439r.addMovieFavorites_Anime(anime.toMovie());
                    Toast.makeText(context, context.getString(R.string.added_fav_label), 0).show();
                }
                if (menuItem.getItemId() == R.id.action_remove_favorites_live_tv) {
                    App.getInstance().f14439r.deleteFavoriteMovie_ANIME(anime.toMovie());
                    Toast.makeText(context, context.getString(R.string.removed_fav_label), 0).show();
                }
                ((C1191v1) this.f673e).dismiss();
                break;
            case 2:
                C0096u c0096u = (C0096u) this.f674f;
                c0096u.getClass();
                int itemId3 = menuItem.getItemId();
                int i8 = R.id.action_add_favorites_live_tv;
                ChannelTv channelTv = (ChannelTv) this.f675j;
                Context context2 = c0096u.f778e;
                if (itemId3 == i8) {
                    App.getInstance().f14439r.addChannelToFavorites(channelTv);
                    Toast.makeText(context2, context2.getString(R.string.added_fav_label), 0).show();
                }
                if (menuItem.getItemId() == R.id.action_remove_favorites_live_tv) {
                    App.getInstance().f14439r.deleteChannelFromFavorites(channelTv);
                    Toast.makeText(context2, context2.getString(R.string.removed_fav_label), 0).show();
                }
                ((C1191v1) this.f673e).dismiss();
                break;
            default:
                e0 e0Var = (e0) this.f674f;
                e0Var.getClass();
                int itemId4 = menuItem.getItemId();
                int i9 = R.id.action_remove;
                d0 d0Var = (d0) this.f675j;
                Activity activity2 = e0Var.f668d;
                if (itemId4 == i9) {
                    ((MyImportActivity) activity2).removeItem(d0Var.f658u);
                } else if (menuItem.getItemId() == R.id.action_open) {
                    ((MyImportActivity) activity2).openItem(d0Var.f658u);
                } else if (menuItem.getItemId() == R.id.action_edit) {
                    ((MyImportActivity) activity2).editItem(d0Var.f658u);
                }
                ((C1191v1) this.f673e).dismiss();
                break;
        }
        return true;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((RolloutsStateSubscriptionsHandler) this.f674f).lambda$registerRolloutsStateSubscriber$1((Task) this.f675j, (RolloutsStateSubscriber) this.f673e, (ConfigContainer) obj);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        Task lambda$activate$2;
        Task lambda$createRealtimeConnection$0;
        switch (this.f672b) {
            case 10:
                lambda$activate$2 = ((FirebaseRemoteConfig) this.f674f).lambda$activate$2((Task) this.f675j, (Task) this.f673e, task);
                return lambda$activate$2;
            default:
                lambda$createRealtimeConnection$0 = ((ConfigRealtimeHttpClient) this.f674f).lambda$createRealtimeConnection$0((Task) this.f675j, (Task) this.f673e, task);
                return lambda$createRealtimeConnection$0;
        }
    }
}
