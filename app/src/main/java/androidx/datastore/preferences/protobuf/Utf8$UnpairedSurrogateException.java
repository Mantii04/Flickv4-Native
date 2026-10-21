package androidx.datastore.preferences.protobuf;

/* loaded from: classes.dex */
class Utf8$UnpairedSurrogateException extends IllegalArgumentException {
    public Utf8$UnpairedSurrogateException(int i2, int i7) {
        super(A.i.e(i2, i7, "Unpaired surrogate at index ", " of "));
    }
}
