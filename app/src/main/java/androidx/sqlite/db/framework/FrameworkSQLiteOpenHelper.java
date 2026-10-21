package androidx.sqlite.db.framework;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.j;
import r1.e;
import r1.f;
import r1.h;
import r1.m;
import s1.c;
import s1.d;
import u5.InterfaceC1707f;

/* loaded from: classes.dex */
public final class FrameworkSQLiteOpenHelper implements m {

    /* renamed from: b, reason: collision with root package name */
    public final Context f8138b;

    /* renamed from: e, reason: collision with root package name */
    public final String f8139e;

    /* renamed from: f, reason: collision with root package name */
    public final h f8140f;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f8141j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f8142m;

    /* renamed from: n, reason: collision with root package name */
    public final InterfaceC1707f f8143n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f8144p;

    static {
        new c(null);
    }

    public FrameworkSQLiteOpenHelper(Context context, String str, h callback, boolean z6, boolean z7) {
        j.checkNotNullParameter(context, "context");
        j.checkNotNullParameter(callback, "callback");
        this.f8138b = context;
        this.f8139e = str;
        this.f8140f = callback;
        this.f8141j = z6;
        this.f8142m = z7;
        this.f8143n = kotlin.a.lazy(new H5.a() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$lazyDelegate$1
            {
                super(0);
            }

            @Override // H5.a
            public final a invoke() {
                String str2;
                Context context2;
                String str3;
                h hVar;
                boolean z8;
                a aVar;
                boolean z9;
                boolean z10;
                Context context3;
                String str4;
                Context context4;
                h hVar2;
                boolean z11;
                FrameworkSQLiteOpenHelper frameworkSQLiteOpenHelper = FrameworkSQLiteOpenHelper.this;
                str2 = frameworkSQLiteOpenHelper.f8139e;
                if (str2 != null) {
                    z10 = frameworkSQLiteOpenHelper.f8141j;
                    if (z10) {
                        context3 = frameworkSQLiteOpenHelper.f8138b;
                        File noBackupFilesDir = e.getNoBackupFilesDir(context3);
                        str4 = frameworkSQLiteOpenHelper.f8139e;
                        File file = new File(noBackupFilesDir, str4);
                        context4 = frameworkSQLiteOpenHelper.f8138b;
                        String absolutePath = file.getAbsolutePath();
                        d dVar = new d(null);
                        hVar2 = frameworkSQLiteOpenHelper.f8140f;
                        z11 = frameworkSQLiteOpenHelper.f8142m;
                        aVar = new a(context4, absolutePath, dVar, hVar2, z11);
                        z9 = frameworkSQLiteOpenHelper.f8144p;
                        r1.c.setWriteAheadLoggingEnabled(aVar, z9);
                        return aVar;
                    }
                }
                context2 = frameworkSQLiteOpenHelper.f8138b;
                str3 = frameworkSQLiteOpenHelper.f8139e;
                d dVar2 = new d(null);
                hVar = frameworkSQLiteOpenHelper.f8140f;
                z8 = frameworkSQLiteOpenHelper.f8142m;
                aVar = new a(context2, str3, dVar2, hVar, z8);
                z9 = frameworkSQLiteOpenHelper.f8144p;
                r1.c.setWriteAheadLoggingEnabled(aVar, z9);
                return aVar;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        InterfaceC1707f interfaceC1707f = this.f8143n;
        if (interfaceC1707f.isInitialized()) {
            ((a) interfaceC1707f.getValue()).close();
        }
    }

    @Override // r1.m
    public f getWritableDatabase() {
        return ((a) this.f8143n.getValue()).getSupportDatabase(true);
    }

    @Override // r1.m
    public void setWriteAheadLoggingEnabled(boolean z6) {
        InterfaceC1707f interfaceC1707f = this.f8143n;
        if (interfaceC1707f.isInitialized()) {
            r1.c.setWriteAheadLoggingEnabled((a) interfaceC1707f.getValue(), z6);
        }
        this.f8144p = z6;
    }
}
