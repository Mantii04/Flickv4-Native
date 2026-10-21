package n1;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import java.util.Set;
import r1.C1541b;
import v5.AbstractC1763A;

/* loaded from: classes.dex */
public final class t implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f18844b;

    public t(u uVar) {
        this.f18844b = uVar;
    }

    public final Set a() {
        Set createSetBuilder = AbstractC1763A.createSetBuilder();
        u uVar = this.f18844b;
        Cursor query$default = RoomDatabase.query$default(uVar.getDatabase$room_runtime_release(), new C1541b("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"), null, 2, null);
        while (query$default.moveToNext()) {
            try {
                createSetBuilder.add(Integer.valueOf(query$default.getInt(0)));
            } finally {
            }
        }
        F5.a.closeFinally(query$default, null);
        Set build = AbstractC1763A.build(createSetBuilder);
        if (build.isEmpty()) {
            return build;
        }
        if (uVar.getCleanupStatement$room_runtime_release() == null) {
            throw new IllegalStateException("Required value was null.");
        }
        r1.p cleanupStatement$room_runtime_release = uVar.getCleanupStatement$room_runtime_release();
        if (cleanupStatement$room_runtime_release == null) {
            throw new IllegalArgumentException("Required value was null.");
        }
        cleanupStatement$room_runtime_release.executeUpdateDelete();
        return build;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0080, code lost:
    
        if (r0 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0082, code lost:
    
        r0.decrementCountAndScheduleClose();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c4, code lost:
    
        if (r2.isEmpty() != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c6, code lost:
    
        r0 = r4.f18844b.getObserverMap$room_runtime_release();
        r1 = r4.f18844b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ce, code lost:
    
        monitor-enter(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00cf, code lost:
    
        r1 = r1.getObserverMap$room_runtime_release().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00db, code lost:
    
        if (r1.hasNext() == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00dd, code lost:
    
        ((n1.s) r1.next().getValue()).notifyByTableInvalidStatus$room_runtime_release(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ef, code lost:
    
        monitor-exit(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a6, code lost:
    
        if (r0 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00bd, code lost:
    
        if (r0 == null) goto L44;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: n1.t.run():void");
    }
}
