.class public final Ly2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/a;


# instance fields
.field public final a:Lo2/d;

.field public final b:Lo2/b;


# direct methods
.method public constructor <init>(Lo2/d;Lo2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly2/b;->a:Lo2/d;

    .line 5
    .line 6
    iput-object p2, p0, Ly2/b;->b:Lo2/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/b;->a:Lo2/d;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lo2/d;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public obtainByteArray(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, Ly2/b;->b:Lo2/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-array p1, p1, [B

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const-class v1, [B

    .line 9
    .line 10
    check-cast v0, Lo2/l;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lo2/l;->get(ILjava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [B

    .line 17
    .line 18
    return-object p1
.end method

.method public obtainIntArray(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Ly2/b;->b:Lo2/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-array p1, p1, [I

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const-class v1, [I

    .line 9
    .line 10
    check-cast v0, Lo2/l;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lo2/l;->get(ILjava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [I

    .line 17
    .line 18
    return-object p1
.end method

.method public release(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/b;->a:Lo2/d;

    invoke-interface {v0, p1}, Lo2/d;->put(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public release([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Ly2/b;->b:Lo2/b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast v0, Lo2/l;

    invoke-virtual {v0, p1}, Lo2/l;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public release([I)V
    .locals 1

    .line 4
    iget-object v0, p0, Ly2/b;->b:Lo2/b;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    check-cast v0, Lo2/l;

    invoke-virtual {v0, p1}, Lo2/l;->put(Ljava/lang/Object;)V

    return-void
.end method
