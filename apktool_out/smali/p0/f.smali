.class public final Lp0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp0/h;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/a;->o(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lp0/g;

    .line 15
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/a;->o(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/a;->b(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    move-result v2

    .line 16
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/a;->y(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    move-result p1

    .line 17
    invoke-direct {v0, v1, v2, p1}, Lp0/h;-><init>(Ljava/lang/String;II)V

    .line 18
    iput-object v0, p0, Lp0/f;->a:Lp0/h;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "packageName should be nonempty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "package shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, Lp0/g;

    .line 5
    invoke-direct {v0, p1, p2, p3}, Lp0/h;-><init>(Ljava/lang/String;II)V

    .line 6
    invoke-static {p2, p3, p1}, Lcom/google/firebase/crashlytics/internal/common/a;->p(IILjava/lang/String;)V

    .line 7
    iput-object v0, p0, Lp0/f;->a:Lp0/h;

    return-void

    .line 8
    :cond_0
    new-instance v0, Lp0/h;

    invoke-direct {v0, p1, p2, p3}, Lp0/h;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lp0/f;->a:Lp0/h;

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "packageName should be nonempty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "package shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lp0/f;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lp0/f;

    .line 12
    .line 13
    iget-object p1, p1, Lp0/f;->a:Lp0/h;

    .line 14
    .line 15
    iget-object v0, p0, Lp0/f;->a:Lp0/h;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lp0/h;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/f;->a:Lp0/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp0/h;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
