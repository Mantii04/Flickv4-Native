package f1;

/* loaded from: classes.dex */
public abstract class F {
    public abstract void onSetVolume(int i2);

    @Deprecated
    public void onUnselect() {
    }

    public abstract void onUpdateVolume(int i2);

    public void onUnselect(int i2) {
        onUnselect();
    }

    public void onRelease() {
    }

    public void onSelect() {
    }
}
