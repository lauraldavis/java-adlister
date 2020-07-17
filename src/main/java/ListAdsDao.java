import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {
    private List<Ad> ads;

    @Override
    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        ads.add(new Ad(
            1,
            1,
            "playstation for sale",
            "This is a slightly used playstation"
        ));
        ads.add(new Ad(
            2,
            1,
            "Super Nintendo",
            "Get your game on with this old-school classic!"
        ));
        ads.add(new Ad(
            3,
            2,
            "Junior Java Developer Position",
            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
        ));
        ads.add(new Ad(
            4,
            2,
            "JavaScript Developer needed",
            "Must have strong Java skills"
        ));
        ads.add(new Ad(
                5,
                3,
                "Database Developer needed",
                "SQL Developer with T-SQL, SSIS, SSRS, Sharepoint exp preferred."
        ));
        ads.add(new Ad(
                6,
                3,
                "Front End Developer",
                "HTML/CSS/JavaScript and Photoshop experience"
        ));
        ads.add(new Ad(
                7,
                1,
                "Sports watch fitness tracker for sale",
                "Garmin Vivosmart HR, built in heart rate monitor."
        ));
        return ads;
    }
}
