.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# static fields
.field public static final l:LC1/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LC1/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC1/y;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Landroidx/work/impl/WorkDatabase;->l:LC1/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final create(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
    .locals 1

    sget-object v0, Landroidx/work/impl/WorkDatabase;->l:LC1/y;

    invoke-virtual {v0, p0, p1, p2}, LC1/y;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract dependencyDao()LK1/b;
.end method

.method public abstract preferenceDao()LK1/f;
.end method

.method public abstract systemIdInfoDao()LK1/l;
.end method

.method public abstract workNameDao()LK1/t;
.end method

.method public abstract workProgressDao()LK1/x;
.end method

.method public abstract workSpecDao()LK1/F;
.end method

.method public abstract workTagDao()LK1/Y;
.end method
