package app;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.ObjectifyFactory;

import entity.*;

public class OfyService {
    static {
        factory().register(Product.class);
        factory().register(Location.class);
        factory().register(Results.class);
        factory().register(ComparedProduct.class);
    }

    public static Objectify ofy() {
        return ObjectifyService.begin();
    }

    public static ObjectifyFactory factory() {
        return ObjectifyService.factory();
    }
}
