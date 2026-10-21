.class public final La2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final a:Z

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Ljava/lang/String;

.field public final d:LZ1/a;

.field public final e:LZ1/d;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;LZ1/a;LZ1/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2/l;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, La2/l;->a:Z

    .line 7
    .line 8
    iput-object p3, p0, La2/l;->b:Landroid/graphics/Path$FillType;

    .line 9
    .line 10
    iput-object p4, p0, La2/l;->d:LZ1/a;

    .line 11
    .line 12
    iput-object p5, p0, La2/l;->e:LZ1/d;

    .line 13
    .line 14
    iput-boolean p6, p0, La2/l;->f:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getColor()LZ1/a;
    .locals 1

    .line 1
    iget-object v0, p0, La2/l;->d:LZ1/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .line 1
    iget-object v0, p0, La2/l;->b:Landroid/graphics/Path$FillType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La2/l;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()LZ1/d;
    .locals 1

    .line 1
    iget-object v0, p0, La2/l;->e:LZ1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/l;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public toContent(LT1/G;Lb2/b;)LV1/d;
    .locals 1

    .line 1
    new-instance v0, LV1/h;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, LV1/h;-><init>(LT1/G;Lb2/b;La2/l;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ShapeFill{color=, fillEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, La2/l;->a:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
