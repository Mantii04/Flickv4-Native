.class public final LP0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LP0/e;


# direct methods
.method public constructor <init>(LP0/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP0/m;->a:LP0/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public hasBothEyeViews()Z
    .locals 2

    .line 1
    iget-object v0, p0, LP0/m;->a:LP0/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, LP0/e;->a:LP0/h;

    .line 6
    .line 7
    iget-boolean v1, v0, LP0/h;->a:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v0, LP0/h;->b:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method
