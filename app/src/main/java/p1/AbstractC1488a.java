package p1;

import P5.p;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Build;
import android.util.Log;
import v5.n;

/* renamed from: p1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1488a {
    public static final Cursor copyAndClose(Cursor c7) {
        kotlin.jvm.internal.j.checkNotNullParameter(c7, "c");
        try {
            MatrixCursor matrixCursor = new MatrixCursor(c7.getColumnNames(), c7.getCount());
            while (c7.moveToNext()) {
                Object[] objArr = new Object[c7.getColumnCount()];
                int columnCount = c7.getColumnCount();
                for (int i2 = 0; i2 < columnCount; i2++) {
                    int type = c7.getType(i2);
                    if (type == 0) {
                        objArr[i2] = null;
                    } else if (type == 1) {
                        objArr[i2] = Long.valueOf(c7.getLong(i2));
                    } else if (type == 2) {
                        objArr[i2] = Double.valueOf(c7.getDouble(i2));
                    } else if (type == 3) {
                        objArr[i2] = c7.getString(i2);
                    } else {
                        if (type != 4) {
                            throw new IllegalStateException();
                        }
                        objArr[i2] = c7.getBlob(i2);
                    }
                }
                matrixCursor.addRow(objArr);
            }
            F5.a.closeFinally(c7, null);
            return matrixCursor;
        } finally {
        }
    }

    public static final int findColumnIndexBySuffix(String[] columnNames, String name) {
        kotlin.jvm.internal.j.checkNotNullParameter(columnNames, "columnNames");
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        String str = "." + name;
        String str2 = "." + name + '`';
        int length = columnNames.length;
        int i2 = 0;
        int i7 = 0;
        while (i2 < length) {
            String str3 = columnNames[i2];
            int i8 = i7 + 1;
            if (str3.length() >= name.length() + 2 && (p.endsWith$default(str3, str, false, 2, null) || (str3.charAt(0) == '`' && p.endsWith$default(str3, str2, false, 2, null)))) {
                return i7;
            }
            i2++;
            i7 = i8;
        }
        return -1;
    }

    public static final int getColumnIndex(Cursor c7, String name) {
        kotlin.jvm.internal.j.checkNotNullParameter(c7, "c");
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        int columnIndex = c7.getColumnIndex(name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = c7.getColumnIndex("`" + name + '`');
        if (columnIndex2 >= 0) {
            return columnIndex2;
        }
        if (Build.VERSION.SDK_INT > 25 || name.length() == 0) {
            return -1;
        }
        String[] columnNames = c7.getColumnNames();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(columnNames, "columnNames");
        return findColumnIndexBySuffix(columnNames, name);
    }

    public static final int getColumnIndexOrThrow(Cursor c7, String name) {
        String str;
        kotlin.jvm.internal.j.checkNotNullParameter(c7, "c");
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        int columnIndex = getColumnIndex(c7, name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            String[] columnNames = c7.getColumnNames();
            kotlin.jvm.internal.j.checkNotNullExpressionValue(columnNames, "c.columnNames");
            str = n.joinToString$default(columnNames, null, null, null, 0, null, null, 63, null);
        } catch (Exception e3) {
            Log.d("RoomCursorUtil", "Cannot collect column names for debug purposes", e3);
            str = "unknown";
        }
        throw new IllegalArgumentException(b.c.l("column '", name, "' does not exist. Available columns: ", str));
    }
}
