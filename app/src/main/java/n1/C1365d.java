package n1;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.room.RoomDatabase;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import o1.InterfaceC1425a;

/* renamed from: n1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1365d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18817a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18818b;

    /* renamed from: c, reason: collision with root package name */
    public final r1.l f18819c;

    /* renamed from: d, reason: collision with root package name */
    public final G f18820d;

    /* renamed from: e, reason: collision with root package name */
    public final List f18821e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f18822f;

    /* renamed from: g, reason: collision with root package name */
    public final RoomDatabase.JournalMode f18823g;

    /* renamed from: h, reason: collision with root package name */
    public final Executor f18824h;

    /* renamed from: i, reason: collision with root package name */
    public final Executor f18825i;

    /* renamed from: j, reason: collision with root package name */
    public final Intent f18826j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f18827k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f18828l;

    /* renamed from: m, reason: collision with root package name */
    public final Set f18829m;

    /* renamed from: n, reason: collision with root package name */
    public final Callable f18830n;

    /* renamed from: o, reason: collision with root package name */
    public final List f18831o;

    /* renamed from: p, reason: collision with root package name */
    public final List f18832p;

    @SuppressLint({"LambdaLast"})
    public C1365d(Context context, String str, r1.l sqliteOpenHelperFactory, G migrationContainer, List<? extends AbstractC1361E> list, boolean z6, RoomDatabase.JournalMode journalMode, Executor queryExecutor, Executor transactionExecutor, Intent intent, boolean z7, boolean z8, Set<Integer> set, String str2, File file, Callable<InputStream> callable, H h7, List<? extends Object> typeConverters, List<? extends InterfaceC1425a> autoMigrationSpecs) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        kotlin.jvm.internal.j.checkNotNullParameter(migrationContainer, "migrationContainer");
        kotlin.jvm.internal.j.checkNotNullParameter(journalMode, "journalMode");
        kotlin.jvm.internal.j.checkNotNullParameter(queryExecutor, "queryExecutor");
        kotlin.jvm.internal.j.checkNotNullParameter(transactionExecutor, "transactionExecutor");
        kotlin.jvm.internal.j.checkNotNullParameter(typeConverters, "typeConverters");
        kotlin.jvm.internal.j.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        this.f18817a = context;
        this.f18818b = str;
        this.f18819c = sqliteOpenHelperFactory;
        this.f18820d = migrationContainer;
        this.f18821e = list;
        this.f18822f = z6;
        this.f18823g = journalMode;
        this.f18824h = queryExecutor;
        this.f18825i = transactionExecutor;
        this.f18826j = intent;
        this.f18827k = z7;
        this.f18828l = z8;
        this.f18829m = set;
        this.f18830n = callable;
        this.f18831o = typeConverters;
        this.f18832p = autoMigrationSpecs;
    }

    public boolean isMigrationRequired(int i2, int i7) {
        Set set;
        return (i2 <= i7 || !this.f18828l) && this.f18827k && ((set = this.f18829m) == null || !set.contains(Integer.valueOf(i2)));
    }
}
