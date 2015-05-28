require 'rails_reseed/version'
require 'rake'

# See the License for the specific language governing permissions and
# limitations under the License.
#

module RailsReseed
  # Install basic rake task to rebuild and reseed db
  class ReseedTasks
    include Rake::DSL if defined? Rake::DSL

    def install_tasks
      namespace :db do
        desc 'Drop, create, migrate then seed the development database'
        task reseed: ['db:drop', 'db:create', 'db:migrate', 'db:seed'] do
          puts 'Reseeding completed.'
        end
      end
    end
  end
end

RailsReseed::ReseedTasks.new.install_tasks
