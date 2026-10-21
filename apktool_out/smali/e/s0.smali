.class public final Le/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Le/s0;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public static b()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedClassVersionError;

    .line 9
    .line 10
    const-string v1, "This function can only be used for API Level < 29."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedClassVersionError;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method


# virtual methods
.method public a(Ln2/z;Ll2/q;)V
    .locals 4

    .line 1
    const-string v0, "DecodeJob.encode"

    .line 2
    .line 3
    invoke-static {v0}, LH2/i;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Ln2/z;->getDiskCache()Lp2/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Le/s0;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ll2/m;

    .line 13
    .line 14
    new-instance v1, Ln2/h;

    .line 15
    .line 16
    iget-object v2, p0, Le/s0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ll2/s;

    .line 19
    .line 20
    iget-object v3, p0, Le/s0;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v3, Ln2/L;

    .line 23
    .line 24
    invoke-direct {v1, v2, v3, p2}, Ln2/h;-><init>(Ll2/a;Ljava/lang/Object;Ll2/q;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0, v1}, Lp2/c;->put(Ll2/m;Lp2/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Le/s0;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Ln2/L;

    .line 33
    .line 34
    invoke-virtual {p1}, Ln2/L;->a()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, LH2/i;->endSection()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    iget-object p2, p0, Le/s0;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p2, Ln2/L;

    .line 45
    .line 46
    invoke-virtual {p2}, Ln2/L;->a()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, LH2/i;->endSection()V

    .line 50
    .line 51
    .line 52
    throw p1
.end method
