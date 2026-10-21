package x1;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.util.Property;

/* renamed from: x1.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1813o {
    public static <T, V> ObjectAnimator a(T t6, Property<T, V> property, Path path) {
        return ObjectAnimator.ofObject(t6, property, (TypeConverter) null, path);
    }
}
