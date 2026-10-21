package C1;

import android.content.Context;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import u5.AbstractC1709h;

/* loaded from: classes.dex */
public final class A {

    /* renamed from: a, reason: collision with root package name */
    public static final A f361a = new A();

    public static final void migrateDatabase(Context context) {
        String str;
        String str2;
        String str3;
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        A a7 = f361a;
        if (a7.getDefaultDatabasePath(context).exists()) {
            B1.t tVar = B1.t.get();
            str = B.f362a;
            tVar.debug(str, "Migrating WorkDatabase to the no-backup directory");
            for (Map.Entry<File, File> entry : a7.migrationPaths(context).entrySet()) {
                File key = entry.getKey();
                File value = entry.getValue();
                if (key.exists()) {
                    if (value.exists()) {
                        B1.t tVar2 = B1.t.get();
                        str3 = B.f362a;
                        tVar2.warning(str3, "Over-writing contents of " + value);
                    }
                    String str4 = key.renameTo(value) ? "Migrated " + key + "to " + value : "Renaming " + key + " to " + value + " failed";
                    B1.t tVar3 = B1.t.get();
                    str2 = B.f362a;
                    tVar3.debug(str2, str4);
                }
            }
        }
    }

    public final File getDatabasePath(Context context) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        return new File(C0063a.f424a.getNoBackupFilesDir(context), "androidx.work.workdb");
    }

    public final File getDefaultDatabasePath(Context context) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        File databasePath = context.getDatabasePath("androidx.work.workdb");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(databasePath, "context.getDatabasePath(WORK_DATABASE_NAME)");
        return databasePath;
    }

    public final Map<File, File> migrationPaths(Context context) {
        String[] strArr;
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        File defaultDatabasePath = getDefaultDatabasePath(context);
        File databasePath = getDatabasePath(context);
        strArr = B.f363b;
        LinkedHashMap linkedHashMap = new LinkedHashMap(M5.g.coerceAtLeast(v5.z.mapCapacity(strArr.length), 16));
        for (String str : strArr) {
            Pair pair = AbstractC1709h.to(new File(defaultDatabasePath.getPath() + str), new File(databasePath.getPath() + str));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return kotlin.collections.a.plus(linkedHashMap, AbstractC1709h.to(defaultDatabasePath, databasePath));
    }
}
