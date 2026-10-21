.class public abstract LJ2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, LJ2/f;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LJ2/e;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LJ2/e;)V
    .locals 1

    .line 2
    new-instance v0, LJ2/i;

    invoke-direct {v0}, LJ2/i;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, LJ2/i;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LJ2/e;)V

    return-void
.end method
