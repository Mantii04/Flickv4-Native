.class public final LV2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LV2/l;

.field public final b:Ljava/util/ArrayList;

.field public c:LV2/d;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LV2/a;->a:LV2/l;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, LV2/a;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v0, p0, LV2/a;->c:LV2/d;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    iput-object v0, p0, LV2/a;->d:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public addLogSourceMetrics(LV2/h;)LV2/a;
    .locals 1

    .line 1
    iget-object v0, p0, LV2/a;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()LV2/b;
    .locals 5

    .line 1
    new-instance v0, LV2/b;

    .line 2
    .line 3
    iget-object v1, p0, LV2/a;->a:LV2/l;

    .line 4
    .line 5
    iget-object v2, p0, LV2/a;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, LV2/a;->c:LV2/d;

    .line 12
    .line 13
    iget-object v4, p0, LV2/a;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, LV2/b;-><init>(LV2/l;Ljava/util/List;LV2/d;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public setAppNamespace(Ljava/lang/String;)LV2/a;
    .locals 0

    .line 1
    iput-object p1, p0, LV2/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGlobalMetrics(LV2/d;)LV2/a;
    .locals 0

    .line 1
    iput-object p1, p0, LV2/a;->c:LV2/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public setWindow(LV2/l;)LV2/a;
    .locals 0

    .line 1
    iput-object p1, p0, LV2/a;->a:LV2/l;

    .line 2
    .line 3
    return-object p0
.end method
