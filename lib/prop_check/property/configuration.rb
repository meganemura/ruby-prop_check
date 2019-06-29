module PropCheck
  class Property
    Configuration = Struct.new(:verbose, :n_runs, :max_generate_attempts, :max_shrink_steps, keyword_init: true) do

      def initialize(verbose: false, n_runs: 1_000, max_generate_attempts: 10_000, max_shrink_steps: 10_000)
        super
      end

      def merge(other)
        Configuration.new(**self.to_h.merge(other.to_h))
      end
    end
  end
end
