.class public final Ll/m;
.super Lk/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ll/u;


# direct methods
.method public constructor <init>(Ll/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/m;->a:Ll/u;

    .line 2
    .line 3
    invoke-direct {p0}, Lk/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getPopup()Lk/I;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/m;->a:Ll/u;

    .line 2
    .line 3
    iget-object v0, v0, Ll/u;->D:Ll/l;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lk/C;->getPopup()Lk/z;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method
