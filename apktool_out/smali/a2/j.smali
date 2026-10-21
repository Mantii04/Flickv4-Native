.class public final La2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LZ1/b;

.field public final c:LZ1/b;

.field public final d:LZ1/l;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LZ1/b;LZ1/b;LZ1/l;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2/j;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, La2/j;->b:LZ1/b;

    .line 7
    .line 8
    iput-object p3, p0, La2/j;->c:LZ1/b;

    .line 9
    .line 10
    iput-object p4, p0, La2/j;->d:LZ1/l;

    .line 11
    .line 12
    iput-boolean p5, p0, La2/j;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getCopies()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/j;->b:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La2/j;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOffset()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/j;->c:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransform()LZ1/l;
    .locals 1

    .line 1
    iget-object v0, p0, La2/j;->d:LZ1/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/j;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public toContent(LT1/G;Lb2/b;)LV1/d;
    .locals 1

    .line 1
    new-instance v0, LV1/q;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, LV1/q;-><init>(LT1/G;Lb2/b;La2/j;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
