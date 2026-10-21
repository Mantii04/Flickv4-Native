.class public abstract Landroidx/emoji2/text/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/emoji2/text/n;

.field public b:I

.field public final c:Landroidx/emoji2/text/h;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/emoji2/text/k;->b:I

    .line 6
    .line 7
    new-instance v0, Landroidx/emoji2/text/h;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/emoji2/text/h;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/emoji2/text/k;->c:Landroidx/emoji2/text/h;

    .line 13
    .line 14
    const-string v0, "metadataLoader cannot be null."

    .line 15
    .line 16
    invoke-static {p1, v0}, LL/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/emoji2/text/k;->a:Landroidx/emoji2/text/n;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getMetadataRepoLoader()Landroidx/emoji2/text/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/k;->a:Landroidx/emoji2/text/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMetadataLoadStrategy(I)Landroidx/emoji2/text/k;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/emoji2/text/k;->b:I

    .line 2
    .line 3
    return-object p0
.end method
