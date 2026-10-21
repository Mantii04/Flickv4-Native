package flix.com.vision.models.tmdb;

import androidx.media3.exoplayer.RendererCapabilities;
import flix.com.vision.R;
import flix.com.vision.models.Movie;
import java.util.Random;
import org.threeten.bp.chrono.HijrahDate;

/* loaded from: classes2.dex */
public class Network {
    public String companyIds;
    public int id;
    public String image;
    public int image_id;
    public Movie movie;
    public String name;

    public Network(int i2, String str, String str2, int i7) {
        this.id = i2;
        this.name = str;
        this.image = str2;
        this.image_id = i7;
        setMovie();
    }

    public static int getProviderId(int i2) {
        switch (i2) {
            case 49:
                return RendererCapabilities.DECODER_SUPPORT_MASK;
            case 213:
                return 8;
            case 318:
                return 43;
            case 453:
                return 15;
            case 922:
            case 3353:
                return 386;
            case 928:
                return 12;
            case 1024:
                return 9;
            case 2552:
                return 350;
            case 2739:
                return 337;
            case 3186:
                return RendererCapabilities.DECODER_SUPPORT_MASK;
            case 3343:
                return 1759;
            case 4025:
                return 151;
            case 4330:
            case 5506:
                return 531;
            case 6219:
                return 210099;
            default:
                return 0;
        }
    }

    private void setMovie() {
        switch (this.id) {
            case 2:
                Movie movie = new Movie();
                this.movie = movie;
                movie.year = "2005";
                movie.setTitle("Grey's Anatomy");
                this.movie.setType(1);
                this.movie.setGenres("Drama");
                Movie movie2 = this.movie;
                movie2.backdrop_image_res_id = R.drawable.abc_movie;
                movie2.setOverview("Follows the personal and professional lives of a group of doctors at Seattle’s Grey Sloan Memorial Hospital.");
                break;
            case 16:
                Movie movie3 = new Movie();
                this.movie = movie3;
                movie3.year = "2005";
                movie3.setTitle("How I Met Your Mother");
                this.movie.setType(1);
                this.movie.setGenres("Comedy");
                Movie movie4 = this.movie;
                movie4.backdrop_image_res_id = R.drawable.cbs_movie;
                movie4.setOverview("A father recounts to his children - through a series of flashbacks - the journey he and his four best friends took leading up to him meeting their mother");
                break;
            case 49:
                Movie movie5 = new Movie();
                this.movie = movie5;
                movie5.year = "2011";
                movie5.setTitle("Game of Thrones");
                this.movie.setType(1);
                this.movie.setGenres("Sci-Fi & Fantasy, Drama, Action & Adventure");
                Movie movie6 = this.movie;
                movie6.backdrop_image_res_id = R.drawable.hbo_movie;
                movie6.setOverview("Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night's Watch, is all that stands between the realms of men and icy horrors beyond.");
                break;
            case 174:
                Movie movie7 = new Movie();
                this.movie = movie7;
                movie7.year = "2008";
                movie7.setTitle("Breaking Bad");
                this.movie.setType(1);
                this.movie.setGenres("Drama, Crime");
                Movie movie8 = this.movie;
                movie8.backdrop_image_res_id = R.drawable.amc_movie;
                movie8.setOverview("When Walter White, a New Mexico chemistry teacher, is diagnosed with Stage III cancer and given a prognosis of only two years left to live. He becomes filled with a sense of fearlessness and an unrelenting desire to secure his family's financial future at any cost as he enters the dangerous world of drugs and crime.");
                break;
            case 213:
                this.movie = new Movie();
                int nextInt = new Random().nextInt(4) + 1;
                if (nextInt != 1) {
                    if (nextInt != 2) {
                        if (nextInt != 3) {
                            Movie movie9 = this.movie;
                            movie9.year = "2021";
                            movie9.setTitle("Squid Game");
                            this.movie.setType(1);
                            this.movie.setGenres("Action & Adventure, Mystery, Drama");
                            Movie movie10 = this.movie;
                            movie10.backdrop_image_res_id = R.drawable.squid;
                            movie10.setOverview("Hundreds of cash-strapped players accept a strange invitation to compete in children's games. Inside, a tempting prize awaits — with deadly high stakes.");
                            break;
                        } else {
                            Movie movie11 = this.movie;
                            movie11.year = "2022";
                            movie11.setTitle("Wednesday");
                            this.movie.setType(1);
                            this.movie.setGenres("Sci-Fi & Fantasy, Mystery, Comedy");
                            Movie movie12 = this.movie;
                            movie12.backdrop_image_res_id = R.drawable.netflix_movie3;
                            movie12.setOverview("Wednesday Addams is sent to Nevermore Academy, a bizarre boarding school where she attempts to master her psychic powers, stop a monstrous killing spree of the town citizens, and solve the supernatural mystery that affected her family 25 years ago — all while navigating her new relationships.");
                            break;
                        }
                    } else {
                        Movie movie13 = this.movie;
                        movie13.year = "2018";
                        movie13.setTitle("House of Cards");
                        this.movie.setType(1);
                        this.movie.setGenres("Drama");
                        Movie movie14 = this.movie;
                        movie14.backdrop_image_res_id = R.drawable.netflix_movie2;
                        movie14.setOverview("Set in present day Washington, D.C., House of Cards is the story of Frank Underwood, a ruthless and cunning politician, and his wife Claire who will stop at nothing to conquer everything. This wicked political drama penetrates the shadowy world of greed, sex and corruption in modern D.C.");
                        break;
                    }
                } else {
                    Movie movie15 = this.movie;
                    movie15.year = "2011";
                    movie15.setTitle("Black Mirror");
                    this.movie.setType(1);
                    this.movie.setGenres("Sci-Fi & Fantasy, Drama, Mystery");
                    Movie movie16 = this.movie;
                    movie16.backdrop_image_res_id = R.drawable.netflix_movie;
                    movie16.setOverview("Over the last ten years, technology has transformed almost every aspect of our lives before we've had time to stop and question it. In every home; on every desk; in every palm - a plasma screen; a monitor; a smartphone - a black mirror of our 21st Century existence.");
                    break;
                }
            case 318:
                Movie movie17 = new Movie();
                this.movie = movie17;
                movie17.year = "2014";
                movie17.setTitle("Power");
                this.movie.setType(1);
                this.movie.setGenres("Crime, Drama");
                Movie movie18 = this.movie;
                movie18.backdrop_image_res_id = R.drawable.starz_movie;
                movie18.setOverview("A successful New York entrepreneur lives a double life as the head of a drug empire that serves only the rich and influential, all while wanting to escape the underworld and keep his family safe.");
                break;
            case 453:
                Movie movie19 = new Movie();
                this.movie = movie19;
                movie19.year = "2021";
                movie19.setTitle("Only Murders in the Building");
                this.movie.setType(1);
                this.movie.setGenres("Comedy, Mystery, Crime");
                Movie movie20 = this.movie;
                movie20.backdrop_image_res_id = R.drawable.hulu_movie;
                movie20.setOverview("Three strangers share an obsession with true crime and suddenly find themselves wrapped up in one.");
                break;
            case 999:
                Movie movie21 = new Movie();
                this.movie = movie21;
                movie21.year = "2023";
                movie21.setTitle("Animal");
                this.movie.setType(0);
                this.movie.setGenres("Action, Crime, Drama");
                Movie movie22 = this.movie;
                movie22.backdrop_image_res_id = R.drawable.bollywood_movie;
                movie22.setOverview("A son undergoes a remarkable transformation as the bond with his father begins to fracture, and he becomes consumed by a quest for vengeance.");
                break;
            case 1024:
                Movie movie23 = new Movie();
                this.movie = movie23;
                movie23.year = "2019";
                movie23.setTitle("The Boys");
                this.movie.setType(1);
                this.movie.setGenres("Sci-Fi & Fantasy, Action & Adventure");
                Movie movie24 = this.movie;
                movie24.backdrop_image_res_id = R.drawable.prime_movie;
                movie24.setOverview("A group of vigilantes known informally as “The Boys” set out to take down corrupt superheroes with no more than blue-collar grit and a willingness to fight dirty.");
                break;
            case 2552:
                Movie movie25 = new Movie();
                this.movie = movie25;
                movie25.year = "2019";
                movie25.setTitle("For All Mankind");
                this.movie.setType(1);
                this.movie.setGenres("Drama, Sci-Fi & Fantasy, War & Politics");
                Movie movie26 = this.movie;
                movie26.backdrop_image_res_id = R.drawable.apple_movie;
                movie26.setOverview("Explore an aspirational world where NASA and the space program remained a priority and a focal point of our hopes and dreams as told through the lives of NASA astronauts, engineers, and their families.");
                break;
            case 2739:
                Movie movie27 = new Movie();
                this.movie = movie27;
                movie27.year = "2019";
                movie27.setTitle("The Mandalorian");
                this.movie.setType(1);
                this.movie.setGenres("Sci-Fi & Fantasy, Action & Adventure, Drama");
                Movie movie28 = this.movie;
                movie28.backdrop_image_res_id = R.drawable.disney_movie;
                movie28.setOverview("The journeys of the Mandalorian through the Star Wars galaxy continue. Once a lone bounty hunter, Din Djarin has reunited with Grogu. Meanwhile, the New Republic struggles to lead the galaxy away from its dark history. The Mandalorian will cross paths with old allies and make new enemies as he and Grogu continue their journey together");
                break;
            case 3343:
                Movie movie29 = new Movie();
                this.movie = movie29;
                movie29.year = "2020";
                movie29.setTitle("Tyler Perry's Ruthless");
                this.movie.setType(1);
                this.movie.setGenres("Drama");
                Movie movie30 = this.movie;
                movie30.backdrop_image_res_id = R.drawable.bet_plus_poster;
                movie30.setOverview("A spinoff of \"The Oval,\" follows Ruth Truesdale as she's forced to play nice with a scandalous religious cult of powerful sex crazed fanatics in the hopes of freeing herself and her daughter.");
                break;
            case 3353:
                Movie movie31 = new Movie();
                this.movie = movie31;
                movie31.year = "2024";
                movie31.setTitle("Fight Night: The Million Dollar Heist");
                this.movie.setType(1);
                this.movie.setGenres("Drama, Crime");
                Movie movie32 = this.movie;
                movie32.backdrop_image_res_id = R.drawable.peacock_poster1;
                movie32.setOverview("The story of how on the night of Ali’s defeat of Jerry Quarry, which came after he was banned from boxing for refusing to enter the military draft, hundreds of guests at an after-party were robbed at gunpoint, becoming one of the largest armed robberies the country has ever seen.");
                break;
            case 4025:
                Movie movie33 = new Movie();
                this.movie = movie33;
                movie33.year = "2010";
                movie33.setTitle("Luther");
                this.movie.setType(1);
                this.movie.setGenres("Crime, Drama, Mystery");
                Movie movie34 = this.movie;
                movie34.backdrop_image_res_id = R.drawable.brit_box_poster;
                movie34.setOverview("A dark psychological crime drama starring Idris Elba as Luther, a man struggling with his own terrible demons, who might be as dangerous as the depraved murderers he hunts");
                break;
            case 4330:
                Movie movie35 = new Movie();
                this.movie = movie35;
                movie35.year = "2023";
                movie35.setTitle("Special Ops: Lioness");
                this.movie.setType(1);
                this.movie.setGenres("Drama");
                Movie movie36 = this.movie;
                movie36.backdrop_image_res_id = R.drawable.paramount_movie;
                movie36.setOverview("Cruz Manuelos, a rough-around-the-edges but passionate young Marine, is recruited to join the CIA’s Lioness Engagement Team to help bring down a terrorist organization from within. Joe, the station chief of the Lioness program, is tasked with training, managing and leading her female undercover operatives.");
                break;
            case 4353:
                Movie movie37 = new Movie();
                this.movie = movie37;
                movie37.year = "2008";
                movie37.setTitle("Ghost Adventures");
                this.movie.setType(1);
                this.movie.setGenres("Reality");
                Movie movie38 = this.movie;
                movie38.backdrop_image_res_id = R.drawable.discovery_movie;
                movie38.setOverview("Paranormal investigator Zak Bagans and his crew, Nick Groff and Aaron Goodwin, search for haunted locations both domestically and internationally. During their investigations, Zak and crew acquaint themselves with the general area; interview locals about the hauntings; and go face-to-face with the evil spirits who reportedly haunt these locations.");
                break;
            case 6219:
                Movie movie39 = new Movie();
                this.movie = movie39;
                movie39.year = "2022";
                movie39.setTitle("FROM");
                this.movie.setType(1);
                this.movie.setMovieId(124364L);
                this.movie.setGenres("Mystery, Drama, and Sci-Fi & Fantasy");
                Movie movie40 = this.movie;
                movie40.backdrop_image_res_id = R.drawable.mgm_movie;
                movie40.setOverview("Unravel the mystery of a nightmarish town in middle America that traps all those who enter. As the unwilling residents fight to keep a sense of normalcy and search for a way out, they must also survive the threats of the surrounding forest – including the terrifying creatures that come out when the sun goes down.");
                break;
            case 9991:
                Movie movie41 = new Movie();
                this.movie = movie41;
                movie41.year = "2024";
                movie41.setTitle("Parasyte: The Grey");
                this.movie.setType(1);
                this.movie.setGenres("Sci-Fi & Fantasy,Drama,Action & Adventure");
                Movie movie42 = this.movie;
                movie42.backdrop_image_res_id = R.drawable.drama_movie;
                movie42.setOverview("When unidentified parasites violently take over human hosts and gain power, humanity must rise to combat the growing threat.");
                break;
            case HijrahDate.MAX_VALUE_OF_ERA /* 9999 */:
                Movie movie43 = new Movie();
                this.movie = movie43;
                movie43.year = "2019";
                movie43.setTitle("Avengers: Endgame");
                this.movie.setType(0);
                this.movie.setGenres("Adventure, Science Fiction, Action");
                Movie movie44 = this.movie;
                movie44.backdrop_image_res_id = R.drawable.marvel_movie;
                movie44.setOverview("After the devastating events of Avengers: Infinity War, the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos' actions and restore order to the universe once and for all, no matter what consequences may be in store.");
                break;
            case 99999:
                Movie movie45 = new Movie();
                this.movie = movie45;
                movie45.year = "2026";
                movie45.setTitle("FV Direct Stream");
                this.movie.setType(1);
                this.movie.setGenres("All Genres");
                Movie movie46 = this.movie;
                movie46.backdrop_image_res_id = R.drawable.movie_grid;
                movie46.setOverview("Use the Direct Stream Service to access all Movies and TV Shows available on Flix Vision with Direct Streaming Links");
                break;
        }
    }

    public Network() {
    }
}
