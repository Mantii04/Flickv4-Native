package androidx.work.impl;

import C1.y;
import K1.F;
import K1.InterfaceC0111b;
import K1.InterfaceC0115f;
import K1.InterfaceC0121l;
import K1.InterfaceC0128t;
import K1.InterfaceC0132x;
import K1.Y;
import android.content.Context;
import androidx.room.RoomDatabase;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class WorkDatabase extends RoomDatabase {

    /* renamed from: l, reason: collision with root package name */
    public static final y f8282l = new y(null);

    public static final WorkDatabase create(Context context, Executor executor, boolean z6) {
        return f8282l.create(context, executor, z6);
    }

    public abstract InterfaceC0111b dependencyDao();

    public abstract InterfaceC0115f preferenceDao();

    public abstract InterfaceC0121l systemIdInfoDao();

    public abstract InterfaceC0128t workNameDao();

    public abstract InterfaceC0132x workProgressDao();

    public abstract F workSpecDao();

    public abstract Y workTagDao();
}
