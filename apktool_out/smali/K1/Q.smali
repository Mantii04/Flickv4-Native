.class public final LK1/Q;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    .line 2
    .line 3
    return-object v0
.end method
