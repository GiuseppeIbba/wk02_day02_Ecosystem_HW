class Bear


    attr_reader :name, :stomach

      def initialize(name, stomach)
        @name = name
        @stomach = []
      end

      def bear_has_a_name()
         @bear.name()
      end

      def roar()
        return "Roar"
      end

      def fish_count()
        return @stomach.length()
      end

      def pick_up(fish)
        @stomach << fish
      end

      def test_stomach_empty()
        assert_equal(0, @stomach.fish_count())
      end

      def test_add_fish_in_stomach()
        @bear.pick_up(@fish1)
        assert_equal(1, @stomach.fish_count())
      end
  end
