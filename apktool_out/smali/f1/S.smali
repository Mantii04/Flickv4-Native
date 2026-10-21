.class public final Lf1/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf1/G;

.field public final b:Ljava/util/ArrayList;

.field public final c:Z

.field public final d:Lf1/E;

.field public e:Lf1/I;


# direct methods
.method public constructor <init>(Lf1/G;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf1/S;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lf1/S;->a:Lf1/G;

    .line 12
    .line 13
    invoke-virtual {p1}, Lf1/G;->getMetadata()Lf1/E;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lf1/S;->d:Lf1/E;

    .line 18
    .line 19
    iput-boolean p2, p0, Lf1/S;->c:Z

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/S;->d:Lf1/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/E;->getComponentName()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/S;->d:Lf1/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/E;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProviderInstance()Lf1/G;
    .locals 1

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf1/S;->a:Lf1/G;

    .line 5
    .line 6
    return-object v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf1/U;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf1/S;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MediaRouter.RouteProviderInfo{ packageName="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lf1/S;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " }"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
