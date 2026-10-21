package w5;

import java.util.ConcurrentModificationException;
import kotlin.collections.builders.MapBuilder;

/* renamed from: w5.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1788h {

    /* renamed from: b, reason: collision with root package name */
    public final MapBuilder f20687b;

    /* renamed from: e, reason: collision with root package name */
    public int f20688e;

    /* renamed from: f, reason: collision with root package name */
    public int f20689f;

    /* renamed from: j, reason: collision with root package name */
    public int f20690j;

    public AbstractC1788h(MapBuilder<Object, Object> map) {
        int i2;
        kotlin.jvm.internal.j.checkNotNullParameter(map, "map");
        this.f20687b = map;
        this.f20689f = -1;
        i2 = map.f17417q;
        this.f20690j = i2;
        initNext$kotlin_stdlib();
    }

    public final void checkForComodification$kotlin_stdlib() {
        int i2;
        i2 = this.f20687b.f17417q;
        if (i2 != this.f20690j) {
            throw new ConcurrentModificationException();
        }
    }

    public final int getIndex$kotlin_stdlib() {
        return this.f20688e;
    }

    public final int getLastIndex$kotlin_stdlib() {
        return this.f20689f;
    }

    public final MapBuilder<Object, Object> getMap$kotlin_stdlib() {
        return this.f20687b;
    }

    public final boolean hasNext() {
        int i2;
        int i7 = this.f20688e;
        i2 = this.f20687b.f17415n;
        return i7 < i2;
    }

    public final void initNext$kotlin_stdlib() {
        int i2;
        int[] iArr;
        while (true) {
            int i7 = this.f20688e;
            MapBuilder mapBuilder = this.f20687b;
            i2 = mapBuilder.f17415n;
            if (i7 >= i2) {
                return;
            }
            iArr = mapBuilder.f17412f;
            int i8 = this.f20688e;
            if (iArr[i8] >= 0) {
                return;
            } else {
                this.f20688e = i8 + 1;
            }
        }
    }

    public final void remove() {
        int i2;
        checkForComodification$kotlin_stdlib();
        if (this.f20689f == -1) {
            throw new IllegalStateException("Call next() before removing element from the iterator.");
        }
        MapBuilder mapBuilder = this.f20687b;
        mapBuilder.checkIsMutable$kotlin_stdlib();
        mapBuilder.h(this.f20689f);
        this.f20689f = -1;
        i2 = mapBuilder.f17417q;
        this.f20690j = i2;
    }

    public final void setIndex$kotlin_stdlib(int i2) {
        this.f20688e = i2;
    }

    public final void setLastIndex$kotlin_stdlib(int i2) {
        this.f20689f = i2;
    }
}
