.class public abstract LN4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const/16 v1, 0x30

    .line 4
    .line 5
    if-nez p4, :cond_1

    .line 6
    .line 7
    if-ne p3, v1, :cond_0

    .line 8
    .line 9
    move p2, v0

    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lh5/i;->makeToastLong(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    if-ne p3, v1, :cond_2

    .line 15
    .line 16
    move p2, v0

    .line 17
    :cond_2
    invoke-static {p0, p1, p2}, Lh5/i;->makeToastLong(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "ContentValues"

    .line 23
    .line 24
    const-string p2, "Success: "

    .line 25
    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method
