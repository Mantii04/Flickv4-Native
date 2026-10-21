package r1;

import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public final int f19714a;

    static {
        new g(null);
    }

    public h(int i2) {
        this.f19714a = i2;
    }

    public static void a(String str) {
        if (P5.p.equals(str, ":memory:", true)) {
            return;
        }
        int length = str.length() - 1;
        int i2 = 0;
        boolean z6 = false;
        while (i2 <= length) {
            boolean z7 = kotlin.jvm.internal.j.compare((int) str.charAt(!z6 ? i2 : length), 32) <= 0;
            if (z6) {
                if (!z7) {
                    break;
                } else {
                    length--;
                }
            } else if (z7) {
                i2++;
            } else {
                z6 = true;
            }
        }
        if (str.subSequence(i2, length + 1).toString().length() == 0) {
            return;
        }
        Log.w("SupportSQLite", "deleting the database file: ".concat(str));
        try {
            c.deleteDatabase(new File(str));
        } catch (Exception e3) {
            Log.w("SupportSQLite", "delete failed: ", e3);
        }
    }

    public void onConfigure(f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
    }

    public void onCorruption(f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + db + ".path");
        if (!db.isOpen()) {
            String path = db.getPath();
            if (path != null) {
                a(path);
                return;
            }
            return;
        }
        List<Pair<String, String>> list = null;
        try {
            try {
                list = db.getAttachedDbs();
            } catch (SQLiteException unused) {
            }
            try {
                db.close();
            } catch (IOException unused2) {
            }
            if (list != null) {
                return;
            }
        } finally {
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    Object obj = ((Pair) it.next()).second;
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(obj, "p.second");
                    a((String) obj);
                }
            } else {
                String path2 = db.getPath();
                if (path2 != null) {
                    a(path2);
                }
            }
        }
    }

    public abstract void onCreate(f fVar);

    public abstract void onDowngrade(f fVar, int i2, int i7);

    public void onOpen(f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
    }

    public abstract void onUpgrade(f fVar, int i2, int i7);
}
