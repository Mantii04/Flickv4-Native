package C2;

/* loaded from: classes.dex */
public interface c {
    void begin();

    void clear();

    boolean isAnyResourceSet();

    boolean isCleared();

    boolean isComplete();

    boolean isEquivalentTo(c cVar);

    boolean isRunning();

    void pause();
}
