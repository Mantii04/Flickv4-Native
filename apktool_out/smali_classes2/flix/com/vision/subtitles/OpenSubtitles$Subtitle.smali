.class public Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/subtitles/OpenSubtitles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subtitle"
.end annotation


# instance fields
.field public idMovie:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IDMovie"
    .end annotation
.end field

.field public idMovieImdb:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IDMovieImdb"
    .end annotation
.end field

.field public idSubMovieFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IDSubMovieFile"
    .end annotation
.end field

.field public idSubtitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IDSubtitle"
    .end annotation
.end field

.field public idSubtitleFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IDSubtitleFile"
    .end annotation
.end field

.field public infoFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InfoFormat"
    .end annotation
.end field

.field public infoOther:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InfoOther"
    .end annotation
.end field

.field public infoReleaseGroup:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InfoReleaseGroup"
    .end annotation
.end field

.field public iso639:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ISO639"
    .end annotation
.end field

.field public languageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LanguageName"
    .end annotation
.end field

.field public matchedBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MatchedBy"
    .end annotation
.end field

.field public movieByteSize:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MovieByteSize"
    .end annotation
.end field

.field public movieFPS:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MovieFPS"
    .end annotation
.end field

.field public movieHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MovieHash"
    .end annotation
.end field

.field public movieImdbRating:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MovieImdbRating"
    .end annotation
.end field

.field public movieKind:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MovieKind"
    .end annotation
.end field

.field public movieName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MovieName"
    .end annotation
.end field

.field public movieNameEng:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MovieNameEng"
    .end annotation
.end field

.field public movieReleaseName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MovieReleaseName"
    .end annotation
.end field

.field public movieTimeMS:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MovieTimeMS"
    .end annotation
.end field

.field public movieYear:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MovieYear"
    .end annotation
.end field

.field public queryCached:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "QueryCached"
    .end annotation
.end field

.field public queryNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "QueryNumber"
    .end annotation
.end field

.field public score:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Score"
    .end annotation
.end field

.field public seriesEpisode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SeriesEpisode"
    .end annotation
.end field

.field public seriesIMDBParent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SeriesIMDBParent"
    .end annotation
.end field

.field public seriesSeason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SeriesSeason"
    .end annotation
.end field

.field public subActualCD:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubActualCD"
    .end annotation
.end field

.field public subAddDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubAddDate"
    .end annotation
.end field

.field public subAuthorComment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubAuthorComment"
    .end annotation
.end field

.field public subAutoTranslation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubAutoTranslation"
    .end annotation
.end field

.field public subBad:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubBad"
    .end annotation
.end field

.field public subComments:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubComments"
    .end annotation
.end field

.field public subDownloadLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubDownloadLink"
    .end annotation
.end field

.field public subDownloadsCnt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubDownloadsCnt"
    .end annotation
.end field

.field public subEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubEncoding"
    .end annotation
.end field

.field public subFeatured:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubFeatured"
    .end annotation
.end field

.field public subFileName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubFileName"
    .end annotation
.end field

.field public subForeignPartsOnly:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubForeignPartsOnly"
    .end annotation
.end field

.field public subFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubFormat"
    .end annotation
.end field

.field public subFromTrusted:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubFromTrusted"
    .end annotation
.end field

.field public subHD:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubHD"
    .end annotation
.end field

.field public subHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubHash"
    .end annotation
.end field

.field public subHearingImpaired:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubHearingImpaired"
    .end annotation
.end field

.field public subLanguageID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubLanguageID"
    .end annotation
.end field

.field public subLastTS:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubLastTS"
    .end annotation
.end field

.field public subRating:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubRating"
    .end annotation
.end field

.field public subSize:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubSize"
    .end annotation
.end field

.field public subSumCD:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubSumCD"
    .end annotation
.end field

.field public subSumVotes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubSumVotes"
    .end annotation
.end field

.field public subTSGroup:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubTSGroup"
    .end annotation
.end field

.field public subTranslator:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubTranslator"
    .end annotation
.end field

.field public subtitlesLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SubtitlesLink"
    .end annotation
.end field

.field public userID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserID"
    .end annotation
.end field

.field public userNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserNickName"
    .end annotation
.end field

.field public userRank:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserRank"
    .end annotation
.end field

.field public zipDownloadLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ZipDownloadLink"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;->subDownloadLink:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
