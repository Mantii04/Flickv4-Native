.class public final Landroidx/emoji2/text/z;
.super Landroidx/emoji2/text/k;
.source "SourceFile"


# static fields
.field public static final d:Landroidx/emoji2/text/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/emoji2/text/x;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/emoji2/text/x;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/emoji2/text/z;->d:Landroidx/emoji2/text/x;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LJ/i;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/emoji2/text/y;

    .line 2
    .line 3
    sget-object v1, Landroidx/emoji2/text/z;->d:Landroidx/emoji2/text/x;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Landroidx/emoji2/text/y;-><init>(Landroid/content/Context;LJ/i;Landroidx/emoji2/text/x;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/emoji2/text/k;-><init>(Landroidx/emoji2/text/n;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public setLoadingExecutor(Ljava/util/concurrent/Executor;)Landroidx/emoji2/text/z;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/emoji2/text/k;->getMetadataRepoLoader()Landroidx/emoji2/text/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/emoji2/text/y;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/y;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
