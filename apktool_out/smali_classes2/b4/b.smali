.class public abstract Lb4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lb4/m;


# direct methods
.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lb4/a;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Lb4/b;->a:Lb4/m;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lb4/m;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lb4/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lb4/b;->a:Lb4/m;

    .line 25
    .line 26
    :cond_1
    sget-object v0, Lb4/b;->a:Lb4/m;

    .line 27
    .line 28
    invoke-virtual {v0, p0, p1}, Lb4/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static stop()V
    .locals 1

    .line 1
    sget-object v0, Lb4/b;->a:Lb4/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb4/m;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
