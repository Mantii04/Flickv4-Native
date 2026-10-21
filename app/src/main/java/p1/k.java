package p1;

import android.database.Cursor;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import java.util.Collection;
import java.util.List;
import java.util.TreeMap;
import v5.o;
import v5.u;

/* loaded from: classes.dex */
public abstract class k {
    public static final List a(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        List createListBuilder = o.createListBuilder();
        while (cursor.moveToNext()) {
            int i2 = cursor.getInt(columnIndex);
            int i7 = cursor.getInt(columnIndex2);
            String string = cursor.getString(columnIndex3);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(string, "cursor.getString(fromColumnIndex)");
            String string2 = cursor.getString(columnIndex4);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(string2, "cursor.getString(toColumnIndex)");
            createListBuilder.add(new g(i2, i7, string, string2));
        }
        return u.sorted(o.build(createListBuilder));
    }

    public static final i b(r1.f fVar, String str, boolean z6) {
        Cursor query = fVar.query("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = query.getColumnIndex("seqno");
            int columnIndex2 = query.getColumnIndex(CmcdConfiguration.KEY_CONTENT_ID);
            int columnIndex3 = query.getColumnIndex("name");
            int columnIndex4 = query.getColumnIndex("desc");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex4 != -1) {
                TreeMap treeMap = new TreeMap();
                TreeMap treeMap2 = new TreeMap();
                while (query.moveToNext()) {
                    if (query.getInt(columnIndex2) >= 0) {
                        int i2 = query.getInt(columnIndex);
                        String columnName = query.getString(columnIndex3);
                        String str2 = query.getInt(columnIndex4) > 0 ? "DESC" : "ASC";
                        Integer valueOf = Integer.valueOf(i2);
                        kotlin.jvm.internal.j.checkNotNullExpressionValue(columnName, "columnName");
                        treeMap.put(valueOf, columnName);
                        treeMap2.put(Integer.valueOf(i2), str2);
                    }
                }
                Collection values = treeMap.values();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(values, "columnsMap.values");
                List list = u.toList(values);
                Collection values2 = treeMap2.values();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(values2, "ordersMap.values");
                i iVar = new i(str, z6, list, u.toList(values2));
                F5.a.closeFinally(query, null);
                return iVar;
            }
            F5.a.closeFinally(query, null);
            return null;
        } finally {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x01f5, code lost:
    
        r0 = v5.AbstractC1763A.build(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01f9, code lost:
    
        F5.a.closeFinally(r3, null);
        r9 = r0;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final p1.j readTableInfo(r1.f r26, java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1.k.readTableInfo(r1.f, java.lang.String):p1.j");
    }
}
