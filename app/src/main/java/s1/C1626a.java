package s1;

import H5.r;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import kotlin.jvm.internal.j;
import r1.o;

/* renamed from: s1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C1626a implements SQLiteDatabase.CursorFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19996a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19997b;

    public /* synthetic */ C1626a(Object obj, int i2) {
        this.f19996a = i2;
        this.f19997b = obj;
    }

    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
    public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        switch (this.f19996a) {
            case 0:
                o query = (o) this.f19997b;
                j.checkNotNullParameter(query, "$query");
                j.checkNotNull(sQLiteQuery);
                query.bindTo(new h(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            default:
                r tmp0 = (r) this.f19997b;
                j.checkNotNullParameter(tmp0, "$tmp0");
                return (Cursor) tmp0.invoke(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
        }
    }
}
