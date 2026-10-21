package r1;

import android.annotation.SuppressLint;

/* renamed from: r1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1540a {
    public C1540a(kotlin.jvm.internal.g gVar) {
    }

    @SuppressLint({"SyntheticAccessor"})
    public final void bind(n statement, Object[] objArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(statement, "statement");
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i2 = 0;
        while (i2 < length) {
            Object obj = objArr[i2];
            i2++;
            if (obj == null) {
                statement.bindNull(i2);
            } else if (obj instanceof byte[]) {
                statement.bindBlob(i2, (byte[]) obj);
            } else if (obj instanceof Float) {
                statement.bindDouble(i2, ((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                statement.bindDouble(i2, ((Number) obj).doubleValue());
            } else if (obj instanceof Long) {
                statement.bindLong(i2, ((Number) obj).longValue());
            } else if (obj instanceof Integer) {
                statement.bindLong(i2, ((Number) obj).intValue());
            } else if (obj instanceof Short) {
                statement.bindLong(i2, ((Number) obj).shortValue());
            } else if (obj instanceof Byte) {
                statement.bindLong(i2, ((Number) obj).byteValue());
            } else if (obj instanceof String) {
                statement.bindString(i2, (String) obj);
            } else {
                if (!(obj instanceof Boolean)) {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i2 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
                }
                statement.bindLong(i2, ((Boolean) obj).booleanValue() ? 1L : 0L);
            }
        }
    }
}
